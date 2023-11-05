<x-base-layout>
    <main class="no-main">
        <div class="ps-breadcrumb">
            <div class="container">
                <ul class="ps-breadcrumb__list">
                    <li class="active"><a href="/">Home</a></li>
                    <li><a href="javascript:void(0);">My Account</a></li>
                </ul>
            </div>
        </div>
        <section class="section--login">
            <div class="container">
                <div class="row">
                    <x-jet-validation-errors class="mb-4" />
                    <div class="col-12 col-lg-10">
                        <div class="login__box">
                            <div class="login__header">
                                <h3 class="login__login">Register Now</h3>
                            </div>
                            <form method="POST" action="{{ route('register') }}">
                                @csrf
                                <div class="login__content">
                                    <div class="login__label">Create a new account.</div>
                                    <div class="input-group">
                                        <input class="form-control" type="text" name="f_name" :value="old('f_name')" required autofocus autocomplete="f_name" placeholder="first name" />
                                    </div>
                                    <div class="input-group">
                                        <input class="form-control" type="text" name="l_name" :value="old('l_name')" required autofocus autocomplete="l_name" placeholder="last name" />
                                    </div>
                                    <div class="input-group">
                                        <input class="form-control" type="email" name="email" :value="old('email')" required autofocus placeholder="email">
                                    </div>
                                    <div class="input-group group-password">
                                        <input class="form-control" type="password" name="password" required autocomplete="new-password" placeholder="password">
                                    </div>
                                    <div class="input-group group-password">
                                        <input class="form-control" type="password" name="password_confirmation" required autocomplete="new-password" placeholder="confirm password">
                                    </div>
                                    <button class="btn btn-login" type="submit">Register</button>


                            </form>
                            
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
</x-base-layout>