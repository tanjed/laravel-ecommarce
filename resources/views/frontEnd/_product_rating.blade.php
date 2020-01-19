<div>
    <i class="fa fa-star fa-2x review-input" style="color: gray" data-index="1"></i>
    <i class="fa fa-star fa-2x review-input" style="color: gray" data-index="2"></i>
    <i class="fa fa-star fa-2x review-input" style="color: gray" data-index="3"></i>
    <i class="fa fa-star fa-2x review-input" style="color: gray" data-index="4"></i>
    <i class="fa fa-star fa-2x review-input" style="color: gray" data-index="5"></i>
</div>

<input type="hidden" name="ratting"  id="ratting" required>
<script>
    resetStarColor();
    $('.review-input').on('click',function () {
        resetStarColor();

        let currentIndex = parseInt($(this).data('index'));
        $('#ratting').val(currentIndex);
        for(let i = 0; i< currentIndex; i++){
            $('.review-input:eq('+i+')').css('color','green');
        }
    });

    function resetStarColor() {
        $('.review-input').css('color','gray');
        $('#ratting').val(0);
    }
</script>

