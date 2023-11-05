<?php
use App\Http\Controllers\GoogleController;
use App\Http\Controllers\SocialController;
use App\Http\Livewire\AboutComponent;
use App\Http\Livewire\CartComponent;
use App\Http\Livewire\CategoryComponent;
use App\Http\Livewire\CheckoutComponent;
use App\Http\Livewire\CompareComponent;
use App\Http\Livewire\ContactComponent;
use App\Http\Livewire\DailyNeedComponent;
use App\Http\Livewire\FaqComponent;
use App\Http\Livewire\HomeComponent;
use App\Http\Livewire\ProductDetailComponent;
use App\Http\Livewire\SearchComponent;
use App\Http\Livewire\ShopComponent;
use App\Http\Livewire\SpecialOffersComponent;
use App\Http\Livewire\ThankyouComponent;
use App\Http\Livewire\User\AddNewAddressComponent;
use App\Http\Livewire\User\OrderDetailComponent;
use App\Http\Livewire\User\UserChangePasswordComponent;
use App\Http\Livewire\User\UserDashboardComponent;
use App\Http\Livewire\User\UserEditProfileComponent;
use App\Http\Livewire\User\UserOrdersComponent;
use App\Http\Livewire\User\UserReviewComponent;
use App\Http\Livewire\WishlistComponent;
use App\Http\Livewire\ListViewComponent;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

// Route::middleware([
//     'auth:sanctum',
//     config('jetstream.auth_session'),
//     'verified'
// ])->group(function () {
//     Route::get('/dashboard', function () {
//         return view('dashboard');
//     })->name('dashboard');
// });
Route::get('auth/facebook', [SocialController::class, 'facebookRedirect']);
Route::get('auth/facebook/callback', [SocialController::class, 'loginWithFacebook']);
Route::get('auth/google', [GoogleController::class, 'redirectToGoogle']);
Route::get('auth/google/callback', [GoogleController::class, 'handleGoogleCallback']);

Route::get('/', HomeComponent::class);
Route::get('/shop', ShopComponent::class);
Route::get('product/detail/{id}', ProductDetailComponent::class)->name('product-detail');
Route::get('/about', AboutComponent::class);
Route::get('/contact', ContactComponent::class);
Route::get('/checkout', CheckoutComponent::class);
Route::get('/cart', CartComponent::class)->name('product.cart');
Route::get('/product-category/{category_id}/{scategory_id?}', CategoryComponent::class)->name('product.category');
Route::get('/wishlist', WishlistComponent::class)->name('product.wishlist');
Route::get("/thankyou", ThankyouComponent::class)->name('thankyou');
Route::get("/search", SearchComponent::class)->name('product.search');
Route::get('/compare/{id}', CompareComponent::class)->name('compare');
Route::get('/faq', FaqComponent::class)->name('faq');
Route::get('/daily-needs', DailyNeedComponent::class)->name('daily-needs');
Route::get('/special-offers', SpecialOffersComponent::class)->name('special-offers');
Route::get('/list-view',ListViewComponent::class)->name('list-view');

Route::middleware(['auth:sanctum', 'verified'])->group(function () {
    Route::prefix('user')->group(function () {
        Route::get("/dashboard", UserDashboardComponent::class)->name("user.dashboard");
        Route::get("/Oders", UserOrdersComponent::class)->name('user.orders');
        Route::get("/order/{order_id}", OrderDetailComponent::class)->name('user.orderdetail');
        Route::get("/review/{order_item_id}/{order_id}", UserReviewComponent::class)->name("user.review");
        Route::get("/change/password", UserChangePasswordComponent::class)->name('user.changepassword');
        Route::get('/profile/edit/{id}', UserEditProfileComponent::class)->name('user.editprofile');
        Route::get('/add/new/address', AddNewAddressComponent::class)->name('user.addnewaddress');
        


    });
});