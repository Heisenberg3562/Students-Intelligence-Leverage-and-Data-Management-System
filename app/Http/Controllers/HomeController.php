<?php

namespace App\Http\Controllers;

use Google\Exception;
use Google_Service_Sheets;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Google_Client;
use Illuminate\Support\Facades\Http;
use Illuminate\Http\Client\Response;

class HomeController extends Controller
{

    public function index()
    {
        return view('homepage');
    }

    public function dashboard(){
        $att = '0';
        if (Auth::user()->hasRole('Super Admin')) {
//            $client = new \Google_Client();
//            $client->setApplicationName('My PHP App');
//            $client->setScopes([\Google_Service_Sheets::SPREADSHEETS]);
//            $client->setAccessType('offline');
//            $jsonAuth = getenv('JSON_AUTH');
//            $client->setAuthConfig(json_decode($jsonAuth, true));
//            $sheets = new Google_Service_Sheets($client);
//            $data = [];
//            $currentRow = 6;
//            $spreadsheetId = getenv('SPREADSHEET_ID');
//            dd("hi");
//            $spreadsheetId = "1CzKezooHJwkWS8ikI6l_bS8Lvv7dnqL1";
//            $range = 'A6:H6';
//            $rows = $sheets->spreadsheets_values->get($spreadsheetId, $range);
////            dd("Hi");
//            if (isset($rows['values'])) {
//                foreach ($rows['values'] as $row) {
//                    /*
//                     * If first column is empty, consider it an empty row and skip (this is just for example)
//                     */
//                    if (empty($row[0])) {
//                        break;
//                    }
//
//                    $data[] = [
//                        'col-a' => $row[0],
//                        'col-b' => $row[1],
//                        'col-c' => $row[2],
//                        'col-d' => $row[3],
//                        'col-e' => $row[4],
//                        'col-f' => $row[5],
//                        'col-g' => $row[6],
//                        'col-h' => $row[7],
//                    ];
//
//                    /*
//                     * Now for each row we've seen, lets update the I column with the current date
//                     */
//                    $updateRange = 'I'.$currentRow;
//                    $updateBody = new \Google_Service_Sheets_ValueRange([
//                        'range' => $updateRange,
//                        'majorDimension' => 'ROWS',
//                        'values' => ['values' => date('c')],
//                    ]);
//                    $sheets->spreadsheets_values->update(
//                        $spreadsheetId,
//                        $updateRange,
//                        $updateBody,
//                        ['valueInputOption' => 'USER_ENTERED']
//                    );
//
//                    $currentRow++;
//                }
//            }
//
//            dd($data);
//            $response = Http::get('http://127.0.0.1:8000/api/sheetData/?sheetId=19yVlR5lmrBnqBcS4fkrAJxzVDwW20dH47uBXNI7hmpY&rollno=18CO20');
//            $json = json_decode(file_get_contents('http://127.0.0.1:8000/api/sheetData/?sheetId=19yVlR5lmrBnqBcS4fkrAJxzVDwW20dH47uBXNI7hmpY&rollno=18CO20'), true);
////            dd($json);
//            $att = $json['Attendance'];
            return view('admin.admindashboard');
//            return view('admin.admindashboard',compact($json));
        }
        if (Auth::user()->hasRole('Student')) {
            $rollno = Auth::user()->rollno;
            $json = json_decode(file_get_contents('https://career4hub.herokuapp.com/api/sheetData/?sheetId=19yVlR5lmrBnqBcS4fkrAJxzVDwW20dH47uBXNI7hmpY&rollno='.$rollno), true);
//            dd($json);
            $att = $json['Attendance'];

            return view('admin.studentdashboard',compact('att'));
        }
        return view('admin.admindashboard',compact('att'));
    }

    public function clearCache()
    {
        \Artisan::call('cache:clear');
        return view('clear-cache');
    }
}
