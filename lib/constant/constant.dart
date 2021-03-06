import 'package:flutter/material.dart';
import 'package:million_de7ka/local_network/cache_helper.dart';
import 'package:million_de7ka/notfication/notifcation.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

String imageProfile = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBnWxJM0ss_HHgCGyEysTML4147p9p_NKsyg&usqp=CAU';

String clockImage ='https://www.techinn.com/f/13784/137843915/mebus-26869-alarm-clock.jpg'; 


String dentistImage = 'https://ichef.bbci.co.uk/news/976/cpsprodpb/2291/production/_110894880_gettyimages-1055182908.jpg';

String teethImage = 'https://w7.pngwing.com/pngs/920/461/png-transparent-white-tooth-human-tooth-dentistry-smile-cartoon-white-teeth-cartoon-character-white-face.png';




List<String> advices=<String>[
  'غسل الأسنان قبل النوم',
  'استخدام الفرشاة بشكل صحيح',
  'عدم إهمال اللسان',
  ' استخدام معجون أسنان مناسب',
  ' استخدام خيط الأسنان',
  'استخدام غسول الفم',
  'تناول الماء',
  'تناول الأطعمة والخضروات',
  'الابتعاد عن الأطعمة الحمضية والسكريات',
  ' التوجه لطبيب الأسنان'
];

List<String> bodyAdvices =<String>[
  'من الطبيعي تنظيف الأسنان مرتين يوميًا، لكن هناك بعض الأشخاص التي تهمل تنظيف أسنانها ليلًا، حتى يتخلص من الجراثيم والتراكم الموجود عليها خلال ساعات اليوم.',
  'استخدام الفرشاة بطريقة صحية لا يقل أهمية عن تنظيف الأسنان، حيث إن استخدامها بضعف على الأسنان يعد كأن لم يتم تنظيفها، ويجب أن يأخذ الوقت الكافي لتنظيف بعمل حركات دائرية لإزالة الجير، حيث إن إهمال هذه الخطوة ينتج عنها تراكم فضلات الطعام والتهاب اللثة.',
  'تراكم الجير على اللسان يؤدي إلى ظهور رائحة كريهة من الفم، إضافة إلى بعض المشكلات الأخرى بالفم، لذلك لا بدّ من تنظيف اللسان بلطف في كل مرة تقوم بها بغسل أسنانك.',
  'هناك بعض العناصر المهمة التي لا بدّ من البحث عنها في معجون الأسنان غير فاعليته في التبييض والنكهات التي يحتوي عليها، ومن العناصر التي لا بدّ من مراقبتها (الفلورايد) وتعد هذه المادة من الأساسيات للحفاظ على صحة الأسنان؛ لأنها مضادة لتسوس الأسنان وتحارب الجراثيم واوفر حاجز وقائي لأسنانك.',
  'يقلل الكثير من الأشخاص حول أهمية خيط الأسنان الذي يتمكن من الوصول إلى القطع الصغيرة من بقايا الطعام الموجودة بين الأسنان، إضافة إلى أنه يعمل على تحفيز اللثة، وتقليل الجدير المتواجد، وانخفاض نسبة حدوث التهابات، ويستخدم مرة واحدة يوميًا.',
  'هناك الكثير من الأشخاص التي تقلل من أهمية غسول الفم للأسنان، لكن يساعد غسول الفم على تقليل نسبة الحمض الموجودة بالفم، وينظف المناطق التي يصعب تنظيف داخل وحول اللثة، ويعيد تمعدن الأسنان، ويعد غسول الفم أداة مساعدة لتحقيق التوازن.',
  'يعد تناول الماء من أفضل المشروبات للصحة، بما فيها صحة الفم، ويوصى بتناول الماء بعد كل وجبة، وأن الماء يساعد على التخلص من بعض الآثار السلبية للأطعمة والمشروبات.',
  'تناول الأطعمة التي تحتوي على ألياف تساهم في مد الجسم بالصحة، ومن الأفضل تناول الأطعمة التي يسهل تناولها، والابتعاد عن الأطعمة المقرمشة التي قد تضر بصحة الأسنان ويجب تقطيعها إلى قطع صغيرة.',
  'يتحول السكر إلى حمض بالفم، وبالتالي يؤدي إلى تآكل مينا الأسنان، وتتسبب الأحماض في تسوس الأسنان، ومنها الثمار الحمضية والكافيين، ويجب أن تتناولها بشكل معتدل',
  'يجب التوجه إلى طبيب الأسنان مرتين بحد أدني خلال السنة، ليتم اكتشاف المشكلات الصحية التي تتعرض لها الأسنان والتمكن من علاجها، إضافة إلى تنظيف الأسنان بالأجهزة الطبية.'
];

String personImage = 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d8/Person_icon_BLACK-01.svg/962px-Person_icon_BLACK-01.png';



List<String> videostitle =[
  '8 اشياء لو فعلتها لن يصيب اسنانك ابداً التسوس ، وازاي تضحك ع البكتريا ال في فمك | د عبدالسلام محمد',
  'الحفاظ على السلامة الاسنان واللثة مع د.محمد'
,

   
 
];


List<String> videosLink=[
  'assets/videos/video1.mp4',
  'assets/videos/video2.mp4',
];
List<String>imageVideo = [
  'https://i.ytimg.com/vi/n468Y6Fwsjs/hqdefault.jpg?sqp=-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE=&rs=AOn4CLBq_NsQXtqrRzFVOKItU-FJq0yZjA',
  'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUWFRgVFRUYGBgYGBoYHBwYGhgZGhgYGhgaGhkYGBgcIy4lHB4rIRgZJjgmKy8xNTU1GiQ7QDszPy40NTEBDAwMEA8QHxISHjQsJCs0MTQxNDQ0NDU0NDQ0NDU0NDQxNDQ0NDQ0NDQ2NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0P//AABEIAKgBLAMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAACAAEDBAUGBwj/xABDEAACAQIDBQUFBAcHBAMAAAABAgADEQQSIQUxQVFhBiJxgZETMqGxwWJy0fAHFCMzQlKSFVOCosLh8WOTstIWJXP/xAAbAQACAwEBAQAAAAAAAAAAAAAAAQIDBAUGB//EAC0RAAICAQMDAgQGAwAAAAAAAAABAhEDEiExBEFRBSITYbHRFDJxgZGhJMHw/9oADAMBAAIRAxEAPwDOiiimo8quSWbvY9L4gnkjH4qPrMKdH2KX9q5+x82X8Jm7np3+U7MCGIIEIJJmccLCAgI4zFQRmABIuLgG9iRwvY+kxztVUrVCTUKBkRicvs6T2toL5rHS5ta8KFKSVWboEcCZOGxDjGVKTPdDTSogNu7rlaxA5y9iNoUkp+0Z1CXtmBzAkEjKLXJa4Og5GFDjOLTfFFm0WSVdn7SpVr+zcNl3izKy+KsAR6SziK6ohd2CqouSdwiJpxatPYcJDCX42ldcYhzEOpyC7WIOUWzXIG7TWRrtSl7JaxcCm1rMQRe5sBbfe8Nw1RXcu+y+1F7PrKlTHU1LhnANNQ7b+6pvYn03SHEbXpIyKAzs651CIznL/Npw+MKYOUVyy/kjZZHhMWlVc1Ngw3aXuDxDA6qehk9oDVNWgXSNljpVVr5SDlYqbG9mG9TbcekxuzmKYrXWq5Jp13BLHcmhB13DfAjKSTS8mwE0P54xZZQw23aTsqrmHtLhGZCFcrvyn8QJpWhuNOL4I8sdl1lf+0EFYUCbOUzi4sCL2sDxOhNuhlm0BqnwBkiCQ7Tx79IPbl3qNhsMxWmhKM6mxdhowU/yDpv1ilKhxhqex6LtHtTgqBK1MTTDDeobMw5ghb2mW36QcB/esRe2iNPGaOAqHcrG/IG/n1l9OzmIcaKbfalTzJdzTHpr8nrtHtxgHNhXC/eV1+Npt4bFJUXPTdXU8UYMPUTw7D9iqp1Zivh+ErvhMbgHFei7AAi5U3Uj7abmEI54t1YpdJJK0e+tIz4TnuyPbFMYuRgErAXKcGHFkP04Tp2eXJ2Y5Rp0yAwSYbEwTGRZGfCMTJCYEZEAmKEYFoETzGKKKXnFRLOl7E/vKn3B/wCQnMidJ2HP7Zxzpn4Ov4zJ3PTXcLO3BmTtXaT0a9EtdaLBw7AaByLLmPAD6nlNc2AuTYczpDencEDiDvFxfhccZJMolGTWzo5DaFbLi0qYWotR6oyugbMtgAAzFfdFuPC1+ckxuxMRWZjkSiKmX2lqjOGCnQ5Ati2nOb+y8LVTN7RqbXC2yJkswBzX5g6H13TRAkr8FUcGpPVe7ujEx+CqiuleiqORTakyuxS63zKQbHjeZGB2fiaD0g1EVVprUZBTYWVnZb5s9hcXNvE23GdpljhYtRY8Cbu2c7s/BVmxTYmogpD2fswuYMza3zMV0/4Eh/WVXG1VxDAKyKKOe2TKQM4F9Lk7+dj0nUZYL0lbusA3GxAPnYwsfwaSp9737nI4R6gr4psOtN6LFcxZ8iBsneKsAQQLtfykFHAVqmG/VFNCoFysKi1D3Mxzi65bnebHkZ24pKBlAFrWtYWtytIqGFp0zZEVCwA7oVSQo0Gm+whqIfh72b23v9/By9TZ2KdqzGkn7SiKLD2g77AECqhA0G7utYy3gcPjERKfs8OWRcq1WdjZdNMoW+4DiAbCdLaIiFk1gSd2zE2bsV0qtXesWZx3lRVRG00OXU3HO9/WRVNr+zxbJXbJTZE9mzaIWGr3bmb21/l669BKu0aLvTYUyqubZSy5lBuL3XwuPOK/I3j0x9vZ3+pyWDqPTxdRcIy10cGqylu6rEm4zi4DXPmDbhLa7MxYNdvZ0mXEAhqYcqV7uUEOVsSQWvpynQbOoOikOVY5mIyLlGQ+6COYl0RtkI4Nt2+7rxZzextn42mtNH/V8qaA2dnC31AtYA20vNmqavtECqppkNnJJzA/w5RuI5/m92ARFdl0cajGk2cntNnxNkXD1ErJUOWqwyrTAb3g+9rqB3QNfK86i0O0a0GxRhpbbe7MLtntA4fBV6imzBMqnkzkLcdReeP9itiK5aq4uAbKDr4nrPUv0mj/AOvqabmpn/OJwPYmtYunDfMvUtqOxu6VLUdhhNloBoJeTBgD3YqJ0FpYUt19ZhijoNkFakLbreUxcfhQwKkaEazYxVVVF3cAfaYTIbHI9wjgkDgYNNbgq4PP8BlwuNpOp0SqoP3WOVgeejGe6sJ4N2owxWpn4Mb6cCNdZ7vQfMitzVT6gGdLDK4nI6mNSERAIkpEAy8ytERWCZIRAIgRBMG0MiDAR5bFFFNBwiRd03+xj2xIH8yOPk3+mc+k1uzNTLiaR5sV/qUr9ZlltI9Jglqwp/I7PtBiqSBA6q7EllDagZR3mtxNjp1PS4nxNFw75ahBqo4QKpsGVBZi5JsRdiLAXub3tNN0DAggEEEG/Iix+EyR2Wwn90f+5V/94EkBSxFQVKZzlkdaJIIA99KoYi245lQkdZqVMai1EpHNmcEiwuo32DHgTle3PKZDgth4ekb00ym4Pvu2q3y6Mx3XkQ2e74hK1QUx7MEKUz52uCO8DoqjMTbXU74EqL+JqOFOQKz2uqs2UMARm1sbWv8AESGhic9Z1VrqEAtYd11d1c34719BBx1LEBw9A0zdMrLUzDcSQysu7fYjoJB/YCVFBxKq75mYmmXRRmsMq5SCRZV38bwCi3s+uuRVNQu9nuXAVjkfI5KjQWNhMzGY5walRLNSZAgdR36dTLmS4I7ynOvgW8ZY/wDiuDtb2PG/v1L/ANWa9um6HiOztBqYpLnRAxcqjEZiVykHNfS3AWgBYwVR8703YMVSk1wLXLBwxtw7yE+cpHGUv1wIqqagGV3PvDuF1VeWl77t43622RSUMWt3mCqT0UsQP8zeshx2Ap1kKVFzKSDa5BuNxupBHrxgBT2hjWLGjQdRXADgOpKEAjMhPA2INhrYiDs7HMz1RUshRKZZb3CNd8xB4qQqsDyIhU+z9BLGmppsAQGUnNY77s17+J15ERP2cwzBQ1PNkJILO5LFjclzm79yP4rwHRcbFICozC72yjXUG5B6bjLFpmYXs9hqbB0pZWU5gc7mxsRxbdru3QNo4iqrsFo1HD0wqtTKjI12zXznunVTfXcOUAok2xWZPZ1MzBUZy6qAcyik7AWP2lAHjFszaRqGzCmrEZlCVVqZl5kAAi2nTXfM3Adk6GRTXplqhuWPtKhOpJFyrAE2tcgTawWzKNH91TRL6Egd4jqx1PrARR27VytRYM4OZlyp3mYNSexyD3rMqdNZFszaTNnLGoclEZldFWpnRnDnKtxdu7p4S3jtgYes+epTLPYC+eoug3aKwEibsxhSqoaWiliO/UuM1s3ezXO4b4D2Kmz9tKmHR3WowBZGYEVcmU++7i1xYjUD5SxtbEsuSrTqdzI5sLFXsUa9/uB9f94v/iWD/uj/ANyr/wC8kw/ZvCobrTsSCvv1DowsRZmI1BgGxQ/SDh2fZ9dV1NlOmt7OpnB9mqdqdwLEm89Y2lQz0nTiVNvHeJ57TQI5Ubgbgcr3uPzzmTqXtRr6WPLKNavZsop16rkgEo7Iim3QjQdAZpbOdywDFgNR717jxIv6zQVUK52FzyHE8BIhVRGAdlS50H4E7+MzdkbUq3M7FUXLkAA2O9hmsOYBOplOkuIchay0jbjTzDLa1rEk348rdZsV8SntTZwTcGwsfUGWMRUUpcaHcbajyj4VDq3Zxe29m+1KprmzD0trfynreCS1NByRB/lE82puTiBb18v9p6jwtNXTN0c/rErRERBIkpkZE1GBojIgESUiARAgyMiNaGYMZE8piiimg4IaSfDVcjo/8rq39JB+krKYcz5F7juenz1YtPhnsim+o4wxMPZu16aYWnVquFGQLrvLL3SABqTpwmfie01V9KFLIP56u89Qg+pkW0lbNN70t34R1wjicCyYip79eoeinIv9K2jrsBL3Zcx5sST8ZU80S2OHM+yX6vc760e04ylsDDW71NfiPkZYp7EQfuqtamfsVGt5q1wRGssWEsWWPZP9zq485pauOpa5kxKciBTqW6Ed0+cvbN2/RqtkN6VXjTqDK9/s30byk1vwV60nTVP5/c144jRRkgjBiigAooooAKKKKACiiigAo0eNABTie0OAZKucL3GJAPC51t01zTtpXx+HV0ZW3H4HgR1vKssNUaLcWTRKziFpkp3T4Dr/AMyomHct31Gm7vE8x04fOTiplZkJ1ViptzUkH5SWliAd/wDxMG8WdNSTM3E4Er7oS/gb778DJsBQKoc7XPoBrfzl/EFACR/zMDEY6xa3h5/kxttjtJGv2a2eKmJLsLoinn7x0H+qdyZy3YfaFN0ekCPaI13HGze4eo3i/MHnOqM34YqMUcnqJOU2RmAZIwgGWmdgGA0kaRtAiwGjRzGjEeURRRTQefFJ6CM5CqLk/DqTwEjpUyzBVFyZ0uCwy01sN/E8/wDaZs81FfM63peHJOTraPd/YHBbOVLFu8w4ncvRRwmlTAlf2wjfrDcBbxnPk5Sds9Ni6eMFUVX/AHc1UqchJWLHkJhriTxaXHx6AbydBw3+fhEmWvEzUo0eJbd+d0HE47J3VH4TPwe0FzHODlIuANeNwT5SDE4hSe6pA4XN+J+lpK0o7BDC9XuX2Ln6453tKmMRaos4zW3Hcy/dO8SsasjxONSmhdzoNbcSeAHUyMZNO0yzJihKLUkmvFFnYPbEU6rYes+ZVOUVDfMPvcxwvvHhO+RwQCCCCLgjUEHcQeInz1SVmdnAN2YtpzJJnoXYzb5plaNU9xjZSf4GP8JPI/Ama4ZNWz5ONn6eWDdbx/tHosYmPBfePH6GWlYUUUUAFFFFABRwIFQ2BhgwGhGDBaty1gXPEwCiQuJGxv6x8txJCImNI8nNFlxOJwzMc6VWqIT/ABUqrGop6gZivQiLJUBsePWdJ+kbs+1RFxeHBGJo21X3np3N1t/Fa5IHHUcZyGxO0VKvZKpFKqAN5tTfhdWPut9k+RMyZsMl7o8fQ2Ys0WtL5L9fB1AtzYDqTM/D4O5LHcL26nmZ1BwrOMrNp47/AEmdtfaGFwylXqoGH8AIZz0yDWZ0pPZGi4rk5/sYjNtfukqr0mDDmqlbg/CewUblRfXT4icH+i7ZbM9bGvTZFqZRRDWv7PUlumYkennPQMOuhHU/OdKKaikznZKlJsEyMyw6cCJC6EHp9ZKyhx8ETCCYTGx1gtGVyVAGDCYQYyJ5RFFAqvlBMvbpWzhY4Oc1Fct0i/hcQqAnex+A5SQbQY8ZgriQbb5Ota2+cnJJylbPoHS9PjwY1Bdv78m9+v2tbU28h+Mf9bYkG/lMRK/AAzYwWzK1TULYddJCmy+U4RVsJq/I8oy1pYwGxHdyrkrbeOM6nA9mKI965PU/hHGEmVz6qEdjlaDkmyi80UwVUjMUIB56fOdFgNmLTqGwFrac7Xubnjr9JrvSBUjnJxw3yZp9bv7Vscl/YDZAzN0sPxnJ7X2QyYtkdiyNldL7spQ3A/xKZ6wijLbl9JyXbCkPaUXt7rMDbkwAHxIktCS2KPjyk6b7kWxtkUhbujXnL1bY6OXQiysLXHDkR1BkGCfdNmk+4xxXFFc5OVqW6ewuy+OdlelV/e0CEb7Q1yP5j5X4zaqbx+eInM4t/Y4ujWHu1f2D+J1pn108BOlff6f+U087mCFpOL5X0HZrEdTaHAcajxvHdrC8ZZ5CiiiiGDVFxbw+cjIuPhHqNCTiPOIaQKgRVRDZY1XdAYyNbgfhDV+kYCEggA4UkG/l0nl36RexFNi2JpqEv75G4En32TQEG+pBUjf3t09UvI61JWBVhcEWIPIxqVMGrPm1GxmGR09oy03AW6E5fBSdUNuHdPSWuxPZo43FqhUmijZ6zHio1yX4sxsDxsSZ6XtnsooJWn3bjQEAoynhlOg8N19SDNrsXsX9Wod5crsd2/KovlHnq3M5hfW8tk0laXJBNt0+x0SUwAFUAAaWGgA6SBjlOo3nhzlpdJHUW8pLCNqgOnHwMVtPHQwaibjyhk6QEVqq8Pzv3wcQlrSa1z/hI9CIsTuPS3zjIyVoomDaOYpIznk8zdrVyMijjc+mn1mlKmMwYc3vYgaeslmdQZh9Lin1Kb7WzPbDOBe3pOk7PbOR1DNc+Z842BpgoOJH53SXAYtadXJmANs2XjlJte3iJzz1UpyapGxjdhorJVQaXAI5Hd9Z0mzVAtaYO1NoqmHc3FyhyAnUv/DYc7/C8yKfbunSRTVp1M9hmCAFc3EhiRpJqk9jO1OS3PQK9IBg4G/Q/SW6Ti08c2j+k2szIKNJURWzMHOYuLEZTYDKNb6XNwOoMNf9JOMOiJSQfdZm9WNvhJWkJYZSPZcXi0TKzsFGZUBJsMzkKq36kgecWN2zh6QJq16aAfzuqn0JuZ4H2l2xWxSKWrMyjel8qX4HILAnrOfw9MDRhoYatrB4Wtmex1f0tYRHqJ7Oq6q5CPTC5XWw71mKldbjwAPG0ycb+kCjiXp0lRlVgcztvVyLKAPXXnblPM8Rs9lTOLlfDd5zb7MbKY/tmGlrKDx5nwik1Vk8eHVKjsk7SPSJR6eZgd4NgRwNosT2trOUKKEynNvJzdD0gJs81VGnfXhxA6c16b5C2ECjK6Pm4EDQ+R1Eq37FrhGLqS3NHGdpqlZMjIi6hgwvcMpuCLz1LDVc6B+aIfUZvrPIcFsp31Cmw13XOny856n2fN8LS/8AyQeiATRibcdzndTGMc3t7r6Gk/8ApMT62Hifh/vFxP3fnEn0HxlpAdDoPCOx0kS34c8vlCqE/WDBOyNR7v54SReXL5QbbreMJxxH5ERMK8WXS0EML26QwYAJN0dYwEOABCKIRmMQyOtTVhZhexBhLrEusOADQHMO8qbNxftUzZcpDuhF72KOyHW3T4x/MCW8ZhJmicCxgIp0/e+H59IFc3zDqB6C5klwBm/O+Ay6X8T5n8iAGeNPzzjx8UlgPH6SPXnJrgzZFTPLJi7c2w1FsqrcslwSdAbkbuM2pFW2fSrA+0UMQNDqCPAiSzflbZzvTH/kqKfNo5PZnaWtSBFle/8ANfQ89N8r067vVzsxzMblgbEeFtw4ToK3ZijfQup8QfmJFT2CqNcOTboJhco1sevhgknuWcFT1udTzJuT5mT7XoZ0yqJLQwpG4+s0KCFbEKmnME3043MhqRe8Trg5XAbLJNyhPgCQJ0dDs47i3sTbmbL8zebaYysRa6gdAJNSer/eEekWpC+Fk+RkYfsKXurOqD+ojyGnxmnh+zGDw9hUY1mGtradO6Nw8TNPD4UtqzsT0PnwiaiiHQA8bnfC6WyIfBbfuf8ABQ2hhvbaZAiWsVAF2HI8BK7YMLay2toJstjUA1FvKZ74nO2mgHxil5bL8cdOyRNh6Oq694cfHgZ1FAaAEcBOe2audxyBuZ0iQjwZuofuoixzZUc8AjH0UzR7PpbDUR/0kPqomJ2gY+xdV95wEUc2qEKB8TOpw9IKiqNyqFHgosPlNOJUmzk5neVLwvqEnPoI1Eaefy0jUd3p8hJJcQQwEgL98jp8t8nlYWgySJVHpDkauJJeIZEyi4PL68PlJQZHUty4iDnMAJ44kavDDQAlEjrHSGpgVohhIRz1nKdmu3mFxteph6IqBqYZgzBcjqrhCykEm1yDqBoZqbQ7O4arU9s9P9oFK+0RnRwtrWDoQfwmX2M7M4bChqtJO9WLMrEaiiWvTQcfdyk31J8gGB1kGnTAvYAXJJsLXJ3k9Y4MRMQEdRo2IeymJzpIKraWjAE7gOcKqdwG8yKibkDkJMo1J8hGIr103DzlWXHOpMrvT1gtiE03weSw0exv+bQIpokk1TPN45vHNTjynZPUOt+QlV3lqkQRY8PlE9ETlzjplTPddN1ccsFNdysK5AEs08VzEjOHEdcMZFo2LLE06GJS2t83lNHD1aJBzMwPCwUgzmWRlg533CRolqi1ydG2OQGwa3G/kTYnTXhKFTaIJNzfQ28eEyRRc75dwuziTqYhOUF3JjiXqsOQtYcNOk1aWFY6H1MPBYUJ7q+Z/CadFI0VSz1tFEuAw4QWG+aKyrThYvFLTQu24bgN7Hgo6kyaV7IxZJ1cpMEU/a4qnT/hoj2z/e3U18b3bynUTK7P4FqaFn/e1Wzv0JGiDoosPWak2RWlUc1NtuT7g0N3mZJARbephiNklwM24yEGSYg902/OsiBiGg7DlFoOMGwMEoIDGxD90nlr6a/SR4bFBxpJXFgZTwzADRW9DGBevHvaQrVB4+unzjix3m/hu+EAJ1rCEz34GDTXlaS26xDAqDMCLaEEEEbwd8a9gAF0Gg3SS0YrAAC5/lMD9YF9bjxBjVtN0q1KzjcjHwI+RgIsM4O4yvUaRNjjuNJx1svzBlLF49lUlUDHgM2p6aAwoZLgMaGZ8utja5uB93nfj5zT9pcXtbpMvY7s6szIEbNqAb8BxsL+kvNm6DzkhBZCY+UQcrcWPpb5wc6839IgPIIoopqPKjg21EtI4I68ZUjg2lOXEpr5m7outl08vKfK/wBotkRiI1KsDv0+UuU6F5zpQlF0z1WDqMeaNwd/VFQITLNDZ7NL+GoATQpU5Cy5sp4fZajeJpUcKBwkyi0kpmFEWxJSsISpJBKuP2pTpDvm7cFGrHy4DxkowbdIqyZIwjqm6RZZ1RSzEBRqSYWyMI1Z1xFRSKa60UOhP/Vcc/5Rw3zhNqbVese93UG5BuHU8zLWye0mIoWCtnQfwPqP8J3r5adJthgcVfc4uX1HHknp3pf2erXinN7M7X4epYMfZNyf3fJxp62nQpUDC6kEHcQbg+BEk01yXxyQkri7DiBjXiBiLBqu6Q6QsXVyoW32I+doCODxiGh8x4CV64B/iIP2dT8JadBx16SN6endW3S5HyjGUWzqpztcbgdx10HnLGGoi2/MOup9ZWxFBiLkHh3d+7lxk2Hplefgd8YF1UEIAcpGhPjCvIgSIdZNK4aShoAgrwKtS0TvyFz8pXemS2pgMG7MdIToFFyZOoAEr1tdTACuzE7tJDWbS28yaq2mkrFecBDYFsqkZjmzHMdBcnX03ektK54i/j+NvrKmBzd7TexPO4+m6XmDDjYeA+MYBrrvBHgT8iLQTQHP4f7wgxO/fzEqYivZiLQA8miiimo8qKKKKACklKuy+6fLePSKKJpNbjhklF6oujQo7XI95L9QfoZfo7cpgahh5X+sUUofT4/Bvxeq9Slu7Jv7epc2/p/GC/aZAO5TY/eIUfC8UUjHBAk/Veon3S/QzMXt6s+gYIOSaH+rf6WmYTFFNMYRXBhy5sk375NjRRRRlYpPhcXUpm9N3U/ZYi/iBofOKKIak09jcwnbLEro2WoPtLY+q2+U2sL27pn95SdeqkOPjYxRSLgi/wDF5cfD/k0G7TYWorKKoUkbnDLu13kW+MubNxlNwCrodODAm/rFFK5RR0+n6mc3TNEtGMUUrN4xXwjNTEUUABB9YQc+MUUAHDjlJA4tFFAEEGtvg5+PWKKAwGeQVjpFFACu0hqRRRiJsKthY6lQNdR4y4u7fpFFACk9TI+Xdy5SUup1IF/KPFAD/9k='
];

String ?name;
String ?image;




