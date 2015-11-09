desc "Generation Seed Data for countries"
task :seed_countries => :environment do
	if Country.count == 0
		puts "||==================================||"
		puts "||         Creating Countries       ||"
		puts "||==================================||"
		countries = [	
			{:iso=>"AD",:name=>"Andorra"},
			{:iso=>"AE",:name=>"United Arab Emirates"},
			{:iso=>"AF",:name=>"Afghanistan"},
			{:iso=>"AG",:name=>"Antigua and Barbuda"},
			{:iso=>"AI",:name=>"Anguilla"},
			{:iso=>"AL",:name=>"Albania"},
			{:iso=>"AM",:name=>"Armenia"},
			{:iso=>"AO",:name=>"Angola"},
			{:iso=>"AQ",:name=>"Antarctica"},
			{:iso=>"AR",:name=>"Argentina"},
			{:iso=>"AS",:name=>"American Samoa"},
			{:iso=>"AT",:name=>"Austria"},
			{:iso=>"AU",:name=>"Australia"},
			{:iso=>"AW",:name=>"Aruba"},
			{:iso=>"AX",:name=>"Aland Islands"},
			{:iso=>"AZ",:name=>"Azerbaijan"},
			{:iso=>"BA",:name=>"Bosnia and Herzegovina"},
			{:iso=>"BB",:name=>"Barbados"},
			{:iso=>"BD",:name=>"Bangladesh"},
			{:iso=>"BE",:name=>"Belgium"},
			{:iso=>"BF",:name=>"Burkina Faso"},
			{:iso=>"BG",:name=>"Bulgaria"},
			{:iso=>"BH",:name=>"Bahrain"},
			{:iso=>"BI",:name=>"Burundi"},
			{:iso=>"BJ",:name=>"Benin"},
			{:iso=>"BL",:name=>"Saint Barthelemy"},
			{:iso=>"BM",:name=>"Bermuda"},
			{:iso=>"BN",:name=>"Brunei"},
			{:iso=>"BO",:name=>"Bolivia"},
			{:iso=>"BQ",:name=>"Bonaire, Saint Eustatius and Saba "},
			{:iso=>"BR",:name=>"Brazil"},
			{:iso=>"BS",:name=>"Bahamas"},
			{:iso=>"BT",:name=>"Bhutan"},
			{:iso=>"BV",:name=>"Bouvet Island"},
			{:iso=>"BW",:name=>"Botswana"},
			{:iso=>"BY",:name=>"Belarus"},
			{:iso=>"BZ",:name=>"Belize"},
			{:iso=>"CA",:name=>"Canada"},
			{:iso=>"CC",:name=>"Cocos Islands"},
			{:iso=>"CD",:name=>"Democratic Republic of the Congo"},
			{:iso=>"CF",:name=>"Central African Republic"},
			{:iso=>"CG",:name=>"Republic of the Congo"},
			{:iso=>"CH",:name=>"Switzerland"},
			{:iso=>"CI",:name=>"Ivory Coast"},
			{:iso=>"CK",:name=>"Cook Islands"},
			{:iso=>"CL",:name=>"Chile"},
			{:iso=>"CM",:name=>"Cameroon"},
			{:iso=>"CN",:name=>"China"},
			{:iso=>"CO",:name=>"Colombia"},
			{:iso=>"CR",:name=>"Costa Rica"},
			{:iso=>"CU",:name=>"Cuba"},
			{:iso=>"CV",:name=>"Cape Verde"},
			{:iso=>"CW",:name=>"Curacao"},
			{:iso=>"CX",:name=>"Christmas Island"},
			{:iso=>"CY",:name=>"Cyprus"},
			{:iso=>"CZ",:name=>"Czech Republic"},
			{:iso=>"DE",:name=>"Germany"},
			{:iso=>"DJ",:name=>"Djibouti"},
			{:iso=>"DK",:name=>"Denmark"},
			{:iso=>"DM",:name=>"Dominica"},
			{:iso=>"DO",:name=>"Dominican Republic"},
			{:iso=>"DZ",:name=>"Algeria"},
			{:iso=>"EC",:name=>"Ecuador"},
			{:iso=>"EE",:name=>"Estonia"},
			{:iso=>"EG",:name=>"Egypt"},
			{:iso=>"EH",:name=>"Western Sahara"},
			{:iso=>"ER",:name=>"Eritrea"},
			{:iso=>"ES",:name=>"Spain"},
			{:iso=>"ET",:name=>"Ethiopia"},
			{:iso=>"FI",:name=>"Finland"},
			{:iso=>"FJ",:name=>"Fiji"},
			{:iso=>"FK",:name=>"Falkland Islands"},
			{:iso=>"FM",:name=>"Micronesia"},
			{:iso=>"FO",:name=>"Faroe Islands"},
			{:iso=>"FR",:name=>"France"},
			{:iso=>"GA",:name=>"Gabon"},
			{:iso=>"GB",:name=>"United Kingdom"},
			{:iso=>"GD",:name=>"Grenada"},
			{:iso=>"GE",:name=>"Georgia"},
			{:iso=>"GF",:name=>"French Guiana"},
			{:iso=>"GG",:name=>"Guernsey"},
			{:iso=>"GH",:name=>"Ghana"},
			{:iso=>"GI",:name=>"Gibraltar"},
			{:iso=>"GL",:name=>"Greenland"},
			{:iso=>"GM",:name=>"Gambia"},
			{:iso=>"GN",:name=>"Guinea"},
			{:iso=>"GP",:name=>"Guadeloupe"},
			{:iso=>"GQ",:name=>"Equatorial Guinea"},
			{:iso=>"GR",:name=>"Greece"},
			{:iso=>"GS",:name=>"South Georgia and the South Sandwich Islands"},
			{:iso=>"GT",:name=>"Guatemala"},
			{:iso=>"GU",:name=>"Guam"},
			{:iso=>"GW",:name=>"Guinea-Bissau"},
			{:iso=>"GY",:name=>"Guyana"},
			{:iso=>"HK",:name=>"Hong Kong"},
			{:iso=>"HM",:name=>"Heard Island and McDonald Islands"},
			{:iso=>"HN",:name=>"Honduras"},
			{:iso=>"HR",:name=>"Croatia"},
			{:iso=>"HT",:name=>"Haiti"},
			{:iso=>"HU",:name=>"Hungary"},
			{:iso=>"ID",:name=>"Indonesia"},
			{:iso=>"IE",:name=>"Ireland"},
			{:iso=>"IL",:name=>"Israel"},
			{:iso=>"IM",:name=>"Isle of Man"},
			{:iso=>"IN",:name=>"India"},
			{:iso=>"IO",:name=>"British Indian Ocean Territory"},
			{:iso=>"IQ",:name=>"Iraq"},
			{:iso=>"IR",:name=>"Iran"},
			{:iso=>"IS",:name=>"Iceland"},
			{:iso=>"IT",:name=>"Italy"},
			{:iso=>"JE",:name=>"Jersey"},
			{:iso=>"JM",:name=>"Jamaica"},
			{:iso=>"JO",:name=>"Jordan"},
			{:iso=>"JP",:name=>"Japan"},
			{:iso=>"KE",:name=>"Kenya"},
			{:iso=>"KG",:name=>"Kyrgyzstan"},
			{:iso=>"KH",:name=>"Cambodia"},
			{:iso=>"KI",:name=>"Kiribati"},
			{:iso=>"KM",:name=>"Comoros"},
			{:iso=>"KN",:name=>"Saint Kitts and Nevis"},
			{:iso=>"KP",:name=>"North Korea"},
			{:iso=>"KR",:name=>"South Korea"},
			{:iso=>"XK",:name=>"Kosovo"},
			{:iso=>"KW",:name=>"Kuwait"},
			{:iso=>"KY",:name=>"Cayman Islands"},
			{:iso=>"KZ",:name=>"Kazakhstan"},
			{:iso=>"LA",:name=>"Laos"},
			{:iso=>"LB",:name=>"Lebanon"},
			{:iso=>"LC",:name=>"Saint Lucia"},
			{:iso=>"LI",:name=>"Liechtenstein"},
			{:iso=>"LK",:name=>"Sri Lanka"},
			{:iso=>"LR",:name=>"Liberia"},
			{:iso=>"LS",:name=>"Lesotho"},
			{:iso=>"LT",:name=>"Lithuania"},
			{:iso=>"LU",:name=>"Luxembourg"},
			{:iso=>"LV",:name=>"Latvia"},
			{:iso=>"LY",:name=>"Libya"},
			{:iso=>"MA",:name=>"Morocco"},
			{:iso=>"MC",:name=>"Monaco"},
			{:iso=>"MD",:name=>"Moldova"},
			{:iso=>"ME",:name=>"Montenegro"},
			{:iso=>"MF",:name=>"Saint Martin"},
			{:iso=>"MG",:name=>"Madagascar"},
			{:iso=>"MH",:name=>"Marshall Islands"},
			{:iso=>"MK",:name=>"Macedonia"},
			{:iso=>"ML",:name=>"Mali"},
			{:iso=>"MM",:name=>"Myanmar"},
			{:iso=>"MN",:name=>"Mongolia"},
			{:iso=>"MO",:name=>"Macao"},
			{:iso=>"MP",:name=>"Northern Mariana Islands"},
			{:iso=>"MQ",:name=>"Martinique"},
			{:iso=>"MR",:name=>"Mauritania"},
			{:iso=>"MS",:name=>"Montserrat"},
			{:iso=>"MT",:name=>"Malta"},
			{:iso=>"MU",:name=>"Mauritius"},
			{:iso=>"MV",:name=>"Maldives"},
			{:iso=>"MW",:name=>"Malawi"},
			{:iso=>"MX",:name=>"Mexico"},
			{:iso=>"MY",:name=>"Malaysia"},
			{:iso=>"MZ",:name=>"Mozambique"},
			{:iso=>"NA",:name=>"Namibia"},
			{:iso=>"NC",:name=>"New Caledonia"},
			{:iso=>"NE",:name=>"Niger"},
			{:iso=>"NF",:name=>"Norfolk Island"},
			{:iso=>"NG",:name=>"Nigeria"},
			{:iso=>"NI",:name=>"Nicaragua"},
			{:iso=>"NL",:name=>"Netherlands"},
			{:iso=>"NO",:name=>"Norway"},
			{:iso=>"NP",:name=>"Nepal"},
			{:iso=>"NR",:name=>"Nauru"},
			{:iso=>"NU",:name=>"Niue"},
			{:iso=>"NZ",:name=>"New Zealand"},
			{:iso=>"OM",:name=>"Oman"},
			{:iso=>"PA",:name=>"Panama"},
			{:iso=>"PE",:name=>"Peru"},
			{:iso=>"PF",:name=>"French Polynesia"},
			{:iso=>"PG",:name=>"Papua New Guinea"},
			{:iso=>"PH",:name=>"Philippines"},
			{:iso=>"PK",:name=>"Pakistan"},
			{:iso=>"PL",:name=>"Poland"},
			{:iso=>"PM",:name=>"Saint Pierre and Miquelon"},
			{:iso=>"PN",:name=>"Pitcairn"},
			{:iso=>"PR",:name=>"Puerto Rico"},
			{:iso=>"PS",:name=>"Palestinian Territory"},
			{:iso=>"PT",:name=>"Portugal"},
			{:iso=>"PW",:name=>"Palau"},
			{:iso=>"PY",:name=>"Paraguay"},
			{:iso=>"QA",:name=>"Qatar"},
			{:iso=>"RE",:name=>"Reunion"},
			{:iso=>"RO",:name=>"Romania"},
			{:iso=>"RS",:name=>"Serbia"},
			{:iso=>"RU",:name=>"Russia"},
			{:iso=>"RW",:name=>"Rwanda"},
			{:iso=>"SA",:name=>"Saudi Arabia"},
			{:iso=>"SB",:name=>"Solomon Islands"},
			{:iso=>"SC",:name=>"Seychelles"},
			{:iso=>"SD",:name=>"Sudan"},
			{:iso=>"SE",:name=>"Sweden"},
			{:iso=>"SG",:name=>"Singapore"},
			{:iso=>"SH",:name=>"Saint Helena"},
			{:iso=>"SI",:name=>"Slovenia"},
			{:iso=>"SJ",:name=>"Svalbard and Jan Mayen"},
			{:iso=>"SK",:name=>"Slovakia"},
			{:iso=>"SL",:name=>"Sierra Leone"},
			{:iso=>"SM",:name=>"San Marino"},
			{:iso=>"SN",:name=>"Senegal"},
			{:iso=>"SO",:name=>"Somalia"},
			{:iso=>"SR",:name=>"Suriname"},
			{:iso=>"ST",:name=>"Sao Tome and Principe"},
			{:iso=>"SV",:name=>"El Salvador"},
			{:iso=>"SX",:name=>"Sint Maarten"},
			{:iso=>"SY",:name=>"Syria"},
			{:iso=>"SZ",:name=>"Swaziland"},
			{:iso=>"TC",:name=>"Turks and Caicos Islands"},
			{:iso=>"TD",:name=>"Chad"},
			{:iso=>"TF",:name=>"French Southern Territories"},
			{:iso=>"TG",:name=>"Togo"},
			{:iso=>"TH",:name=>"Thailand"},
			{:iso=>"TJ",:name=>"Tajikistan"},
			{:iso=>"TK",:name=>"Tokelau"},
			{:iso=>"TL",:name=>"East Timor"},
			{:iso=>"TM",:name=>"Turkmenistan"},
			{:iso=>"TN",:name=>"Tunisia"},
			{:iso=>"TO",:name=>"Tonga"},
			{:iso=>"TR",:name=>"Turkey"},
			{:iso=>"TT",:name=>"Trinidad and Tobago"},
			{:iso=>"TV",:name=>"Tuvalu"},
			{:iso=>"TW",:name=>"Taiwan"},
			{:iso=>"TZ",:name=>"Tanzania"},
			{:iso=>"UA",:name=>"Ukraine"},
			{:iso=>"UG",:name=>"Uganda"},
			{:iso=>"UM",:name=>"United States Minor Outlying Islands"},
			{:iso=>"US",:name=>"United States"},
			{:iso=>"UY",:name=>"Uruguay"},
			{:iso=>"UZ",:name=>"Uzbekistan"},
			{:iso=>"VA",:name=>"Vatican"},
			{:iso=>"VC",:name=>"Saint Vincent and the Grenadines"},
			{:iso=>"VE",:name=>"Venezuela"},
			{:iso=>"VG",:name=>"British Virgin Islands"},
			{:iso=>"VI",:name=>"U.S. Virgin Islands"},
			{:iso=>"VN",:name=>"Vietnam"},
			{:iso=>"VU",:name=>"Vanuatu"},
			{:iso=>"WF",:name=>"Wallis and Futuna"},
			{:iso=>"WS",:name=>"Samoa"},
			{:iso=>"YE",:name=>"Yemen"},
			{:iso=>"YT",:name=>"Mayotte"},
			{:iso=>"ZA",:name=>"South Africa"},
			{:iso=>"ZM",:name=>"Zambia"},
			{:iso=>"ZW",:name=>"Zimbabwe"},
			{:iso=>"CS",:name=>"Serbia and Montenegro"},
			{:iso=>"AN",:name=>"Netherlands Antilles"}
		]

		total = countries.length.to_f
		process_counter = 0
		process_display = 0
		countries.each do |country|
			Country.create(country)
			process_counter+=1
			percent = ((process_counter/total) * 100).round(1)
			display = case process_display
									when 0
										process_display+=1
										"|"
									when 1
										process_display+=1
										"/"
									when 2
										process_display+=1
										"-"
									when 3
										process_display+=1
										"|"
									when 4
										process_display+=1
										"-"
									when 5
										process_display=0
										"\\"
								end
			print "\r\r Creating countries #{percent}% #{display}"
		end
		print "\n"
	end

	if State.count == 0
		puts "||==============================||"
		puts "||        Creating States       ||"
		puts "||==============================||"
		states = [	
			{country_id: 210 ,iso: "SV-AH", name:	"Ahuachapán"},
			{country_id: 210 ,iso: "SV-CA", name:	"Cabañas"},
			{country_id: 210 ,iso: "SV-CU", name:	"Cuscatlán"},
			{country_id: 210 ,iso: "SV-CH", name:	"Chalatenango"},
			{country_id: 210 ,iso: "SV-LI", name:	"La Libertad"},
			{country_id: 210 ,iso: "SV-PA", name:	"La Paz"},
			{country_id: 210 ,iso: "SV-UN", name:	"La Unión"},
			{country_id: 210 ,iso: "SV-MO", name:	"Morazán"},
			{country_id: 210 ,iso: "SV-SM", name:	"San Miguel"},
			{country_id: 210 ,iso: "SV-SS", name:	"San Salvador"},
			{country_id: 210 ,iso: "SV-SA", name:	"Santa Ana"},
			{country_id: 210 ,iso: "SV-SV", name:	"San Vicente"},
			{country_id: 210 ,iso: "SV-SO", name:	"Sonsonate"},
			{country_id: 210 ,iso: "SV-US", name:	"Usulután"},
			{country_id: 233,iso: "US-AR",name: "Arkansas"},
			{country_id: 233,iso: "US-DC",name: "Washington, D.C."},
			{country_id: 233,iso: "US-DE",name: "Delaware"},
			{country_id: 233,iso: "US-FL",name: "Florida"},
			{country_id: 233,iso: "US-GA",name: "Georgia"},
			{country_id: 233,iso: "US-KS",name: "Kansas"},
			{country_id: 233,iso: "US-LA",name: "Louisiana"},
			{country_id: 233,iso: "US-MD",name: "Maryland"},
			{country_id: 233,iso: "US-MO",name: "Missouri"},
			{country_id: 233,iso: "US-MS",name: "Mississippi"},
			{country_id: 233,iso: "US-NC",name: "North Carolina"},
			{country_id: 233,iso: "US-OK",name: "Oklahoma"},
			{country_id: 233,iso: "US-SC",name: "South Carolina"},
			{country_id: 233,iso: "US-TN",name: "Tennessee"},
			{country_id: 233,iso: "US-TX",name: "Texas"},
			{country_id: 233,iso: "US-WV",name: "West Virginia"},
			{country_id: 233,iso: "US-AL",name: "Alabama"},
			{country_id: 233,iso: "US-CT",name: "Connecticut"},
			{country_id: 233,iso: "US-IA",name: "Iowa"},
			{country_id: 233,iso: "US-IL",name: "Illinois"},
			{country_id: 233,iso: "US-IN",name: "Indiana"},
			{country_id: 233,iso: "US-ME",name: "Maine"},
			{country_id: 233,iso: "US-MI",name: "Michigan"},
			{country_id: 233,iso: "US-MN",name: "Minnesota"},
			{country_id: 233,iso: "US-NE",name: "Nebraska"},
			{country_id: 233,iso: "US-NH",name: "New Hampshire"},
			{country_id: 233,iso: "US-NJ",name: "New Jersey"},
			{country_id: 233,iso: "US-NY",name: "New York"},
			{country_id: 233,iso: "US-OH",name: "Ohio"},
			{country_id: 233,iso: "US-RI",name: "Rhode Island"},
			{country_id: 233,iso: "US-VT",name: "Vermont"},
			{country_id: 233,iso: "US-WI",name: "Wisconsin"},
			{country_id: 233,iso: "US-CA",name: "California"},
			{country_id: 233,iso: "US-CO",name: "Colorado"},
			{country_id: 233,iso: "US-NM",name: "New Mexico"},
			{country_id: 233,iso: "US-NV",name: "Nevada"},
			{country_id: 233,iso: "US-UT",name: "Utah"},
			{country_id: 233,iso: "US-AZ",name: "Arizona"},
			{country_id: 233,iso: "US-ID",name: "Idaho"},
			{country_id: 233,iso: "US-MT",name: "Montana"},
			{country_id: 233,iso: "US-ND",name: "North Dakota"},
			{country_id: 233,iso: "US-OR",name: "Oregon"},
			{country_id: 233,iso: "US-SD",name: "South Dakota"},
			{country_id: 233,iso: "US-WA",name: "Washington"},
			{country_id: 233,iso: "US-WY",name: "Wyoming"},
			{country_id: 233,iso: "US-HI",name: "Hawaii"},
			{country_id: 233,iso: "US-AK",name: "Alaska"},
			{country_id: 233,iso: "US-KY",name: "Kentucky"},
			{country_id: 233,iso: "US-MA",name: "Massachusetts"},
			{country_id: 233,iso: "US-PA",name: "Pennsylvania"},
			{country_id: 233,iso: "US-VA",name: "Virginia"}
		]
		total = states.length.to_f
		process_counter = 0
		process_display = 0
		states.each do |state|
			State.create(state)
			process_counter+=1
			percent = ((process_counter/total) * 100).round(1)
			display = case process_display
									when 0
										process_display+=1
										"|"
									when 1
										process_display+=1
										"/"
									when 2
										process_display+=1
										"-"
									when 3
										process_display+=1
										"|"
									when 4
										process_display+=1
										"-"
									when 5
										process_display=0
										"\\"
								end
			print "\r\r Creating states #{percent}% #{display}"
		end
		print "\n"
	end
end

desc "Generation Seed Data for sports"
task :seed_sports => :environment do
	if Sport.count == 0
		puts "||==============================||"
		puts "||        Creating Sports       ||"
		puts "||==============================||"
		sports = [	{name:"Football", acronym:"fut01", maximun_signings: 22},
								{name:"Football-Sala", acronym:"fut02", maximun_signings: 10},
								{name:"Football-Playa", acronym:"fut03", maximun_signings: 10},
								{name:"Basketball", acronym:"bkb01", maximun_signings: 10},
								{name:"Street Basketball", acronym:"bkb02", maximun_signings: 6},
								{name:"Volleyball", acronym:"vol", maximun_signings: 12},
								{name:"Volleyball-Playa", acronym:"vol02", maximun_signings: 12},
								{name:"Volleyball-Parejas", acronym:"vol0", maximun_signings: 4},
								{name:"Bowling", acronym:"bowl0", maximun_signings: 10},
								{name:"Football Americano", acronym:"fut04", maximun_signings: 20},
								{name:"Hokey", acronym:"hok", maximun_signings: 20},
								{name:"Softball", acronym:"softb", maximun_signings: 20},
								{name:"Baseball", acronym:"baseb", maximun_signings: 20}
							]
		total = sports.length.to_f
		process_counter = 0
		process_display = 0
		sports.each do |sport|
			Sport.create(sport)
			process_counter+=1
			percent = ((process_counter/total) * 100).round(1)
			display = case process_display
									when 0
										process_display+=1
										"|"
									when 1
										process_display+=1
										"/"
									when 2
										process_display+=1
										"-"
									when 3
										process_display+=1
										"|"
									when 4
										process_display+=1
										"-"
									when 5
										process_display=0
										"\\"
								end
			print "\r\r Creating sports #{percent}% #{display}"
		end
		print "\n"
	end
end