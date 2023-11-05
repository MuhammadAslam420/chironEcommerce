<main class="no-main">
    <div class="container" style="padding:30px 0;">
        <div class="row">
            <div class="col-md-12">
                <a href="{{route('user.dashboard')}}" class="btn btn-info float-right">
                    <h4 class="text-light">Dashboard</h4>
                </a>
            </div>
            <div class="col-md-12">
                <div class="card">
                    <div id="review_form_wrapper">

                        <div id="comments">
                            <div class="card-header">
                                <div class="card-title">
                                    <h2 class="woocommerce-Reviews-title">Add Review To </h2>
                                </div>
                            </div>
                            <ol class="commentlist">
                                <li class="comment byuser comment-author-admin bypostauthor even thread-even depth-1" id="li-comment-20">
                                    <div id="comment-20" class="comment_container">
                                        <img alt="" src="https://app.chiron.ae/storage/app/public/product/{{json_decode($orderItem['image'],true)[0]}}" alt="80" width="120">
                                        <div class="comment-text">

                                            <p class="meta">
                                                <strong class="woocommerce-review__author">
                                                    <h4 class="text-dark">{{$orderItem->name}}</h4>
                                                </strong>
                                            </p>

                                        </div>
                                    </div>
                                </li>
                            </ol>
                        </div>
                        <div id="review_form">
                            @if(Session::has('re_msg'))
                            <div class="alert alert-success">{{Session::get('re_msg')}}</div>
                            @endif
                            <div id="respond" class="comment-respond">

                                <form wire:submit.prevent="addReview" id="commentform" class="comment-form" novalidate="" class="content-center">

                                    <div class="form-group">
                                        <div class="comment-form-rating">
                                            <div class="col-md-4">
                                                <span>Your rating <b>*</b></span>
                                                <p class="stars">
                                            </div>

                                            <div class="col-md-8"> <label for="rated-1"></label>
                                                <input type="radio" id="rated-1" name="rating" value="1" wire:model="rating">
                                                <label for="rated-2"></label>
                                                <input type="radio" id="rated-2" name="rating" value="2" wire:model="rating">
                                                <label for="rated-3"></label>
                                                <input type="radio" id="rated-3" name="rating" value="3" wire:model="rating">
                                                <label for="rated-4"></label>
                                                <input type="radio" id="rated-4" name="rating" value="4" wire:model="rating">
                                                <label for="rated-5"></label>
                                                <input type="radio" id="rated-5" name="rating" value="5" checked="checked" wire:model="rating">
                                                @error('rating')
                                                <p class="alert alert-danger">{{$message}}</p>@enderror
                                                </p>
                                            </div>
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <label for="comment" class="col-md-4">Your review <b>*</b></label>
                                        <div class="col-md-8">
                                            <textarea id="comment" name="comment" class="form-control" wire:model="comment"></textarea>
                                            @error('comment') <p class="alert alert-danger">{{$message}}</p>@enderror
                                        </div>
                                    </div>

                                    <p class="form-submit m-5">
                                        <button type="submit" id="submit" class="btn btn-info float-right" value="Submit">
                                            <h4 class="text-light">Add Review</h4>
                                        </button>
                                    </p>
                                </form>

                            </div><!-- .comment-respond-->
                        </div><!-- #review_form -->
                    </div>
                </div>

            </div>
        </div>
    </div>
</main>