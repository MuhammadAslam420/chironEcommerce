<footer class="ps-footer" style="margin-top:5px;">
    <div class="container">
        <div class="ps-footer--contact">
            <div class="row">
                <div class="col-12 col-lg-4">
                      @php
                    ($logo=DB::table('business_settings')->where(['key'=>'logo'])->first()->value);
                    @endphp
                    <a href="/"><img src="https://app.chiron.ae/storage/app/public/restaurant/{{$logo}}" style="width:120px;" alt="logo"></a>
                    <br>
                    <br>
                    @php
                    ($phone=DB::table('business_settings')->where(['key'=>'phone'])->first()->value);
                    @endphp
                    @php
                    ($address=DB::table('business_settings')->where(['key'=>'address'])->first()->value);
                    @endphp
                    @php
                    ($email=DB::table('business_settings')->where(['key'=>'email_address'])->first()->value);
                    @endphp
                     
                                <a href="#"><b>Privacy Policy</b></a><br>
                                <a href="#" ><b>Terms & Conditions</b></a><br>
                                <a href="#"><b>Returns & Cancellation Policy</b></a><br>
                                <a href="/faq"><b>FAQ's</b></a><br>
                            
                    
                    
                </div>
                <div class="col-12 col-lg-4">
                    <h4 ><b style="font-family:Tahoma, sans-serif;color:#36454F;">Reach Us</b></h4>
                   
                    <p style="line-height: 150%;"><b >Email <br>{{$email}}</b></p>
                    <p  style="line-height: 150%;"><b >Hotline:<br> {{$phone}}</b></p>
                    <p style="line-height: 150%;"><b >Head office<br> {!! $address !!}</b></p>
                    <p style="line-height: 150%;"><b >Working Days<br> Monday - sunday / 9:00AM - 11PM</b></p>
                </div>
                
                <div class="col-12 col-lg-4">
                    <h4 style="font-family:Tahoma, sans-serif;color:#36454F;">Download Our App</h4>
                    <div class="flex" style="margin-top:-35px;">
                        <a href="https://play.google.com/store/apps/details?id=com.chiron.user"><img src="{{asset('public/google-play-logo.png')}}" style="width:120px;"  alt=""></a>
                        <a href="https://apps.apple.com/app/chiron/id1636685448"><img src="{{asset('public/apple-play-store.png')}}" style="width:120px;height:75px;" alt=""></a>
                    </div>
                    
                    <div class="flex" style="margin-top:-30px;">
                       <b>We Accept</b><br>
                       
                        <a href="#"><img src="{{asset('public/screenshot (6).png')}}" style="margin-left:-5px;" alt=""></a>
                    </div>
                
                    @php
                    $socails=DB::table('social_medias')->get();
                    @endphp
                    <div class="flex" style="margin-top:-5px; ">
                        <b>Follow Us</b><br>
                        
                        @foreach($socails as $social)
                        <a href="{{$social->link}}"><img src="{{asset('public')}}/{{$social->name}}.png" style="margin-left:-10px;"  alt=""></a>
                        @endforeach
                        
                    </div>
                </div>
                <div class="col-12 col-lg-12"><b style="font-size:13px;">Copyright <b><i class="fa fa-copyright" aria-hidden="true"></i></b> 2022. Allrights reserved</b></div>
            </div>
        </div>

    </div>
</footer>