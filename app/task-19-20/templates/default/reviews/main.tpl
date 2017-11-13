<div class="content">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore mollitia culpa, laborum voluptatum aut sit esse quibusdam quo magni ducimus iure reprehenderit minus voluptatibus neque eum officia ipsum velit at enim quidem unde cum. Assumenda ipsam natus facilis adipisci. Ad corporis repellat tenetur, pariatur voluptates cupiditate quas aperiam, quo ab, explicabo nobis quasi. Deleniti at excepturi ab reprehenderit debitis repellat assumenda dolore. Nulla explicabo deserunt nobis facilis rerum, quaerat quidem suscipit, molestiae at rem exercitationem praesentium facere? Laudantium amet consequuntur similique alias ad voluptatibus eveniet esse iste quo vitae, corrupti libero voluptates, quod, perferendis reiciendis modi facere nisi enim! Corporis sequi debitis ea ad officia numquam molestias quisquam harum magnam voluptatem quod porro fugiat sint illum quo, amet consequatur saepe necessitatibus cum modi! Iure perferendis, nam facere reprehenderit! Magni sit nostrum nisi, minima explicabo, officia obcaecati molestiae amet similique maiores doloremque recusandae necessitatibus, earum hic blanditiis ullam provident culpa. Mollitia veritatis provident inventore sint saepe, dicta. Accusamus, error aliquam perspiciatis culpa pariatur minima delectus nostrum facilis quod voluptatem nam earum reiciendis soluta eius, non quas cum tenetur! Natus in optio assumenda iusto temporibus ducimus, quaerat dolorem est nam deserunt! Dolore hic, vel asperiores aliquam voluptate culpa quasi, recusandae commodi nihil aperiam, odio beatae in! Eius praesentium fugiat maxime consequatur dolores quis facere nemo eum adipisci illo, consequuntur eligendi repudiandae nobis non minus nesciunt molestiae, exercitationem ut ipsam incidunt quisquam optio nam! Ipsam fuga temporibus consequuntur, odit distinctio sit rerum laudantium perspiciatis autem obcaecati excepturi quae iste optio, quis officia. Culpa cum vero delectus, voluptas nulla nesciunt necessitatibus numquam placeat corrupti provident laboriosam dolorum inventore ut eaque voluptatibus doloribus laborum maiores consequatur maxime esse modi! Doloremque voluptate necessitatibus, quam laboriosam distinctio, mollitia, culpa autem perferendis accusantium adipisci modi minus cupiditate dolor porro veniam unde omnis? Exercitationem quidem sunt ipsum magni enim?
</div>
<h2 class="add-comment">Комментраии пользователей</h2>
<div class="reviews">
    <ul class="reviews__list">
    <?php if(mysqli_num_rows($res)) {
        while($row = mysqli_fetch_assoc($res)) {?>
            <li class="reviews__item review-item" data-number="<?php echo htmlspecialchars($row['id']); ?>">
                <div class="review__info"><span class="review__author"><?php echo htmlspecialchars($row['name']); ?></span> из города <span class="review__town"><?php echo htmlspecialchars($row['town']); ?></span><span class="review__time"><?php echo htmlspecialchars($row['time_created']); ?></span></div>
                <p class="review__text"><?php echo htmlspecialchars($row['message']); ?></p>
            </li>
        <?php } ?>
    <?php } ?>
    </ul>
    <form class="reviews-form" action="#" method="POST">
        <h2>Оставьте ваш комментарий</h2>
        <label for="name">
            <span>Ваше имя:</span>
            <input class="<?php echo(isset($error['name']) ? 'error' : null) ?>" type="text" name="name" id="name" placeholder="Введите ваше имя:" value="<?php echo @htmlspecialchars($_POST['name']);?>">
        </label>
        <label for="town">
            <span>Ваш город:</span>
            <input class="<?php echo(isset($error['town']) ? 'error' : null) ?>" type="text" name="town" id="town" placeholder="Город в котором живете" value="<?php echo @htmlspecialchars($_POST['town']);?>">
        </label>
        <label for="message">
            <span>Ваше сообщение:</span>
            <textarea class="<?php echo(isset($error['message']) ? 'error' : null) ?>" name="message" id="message" placeholder="напишите нам что-нибудь" rows="10" value="<?php echo @htmlspecialchars($_POST['message']);?>"></textarea>
        </label>
        <input type="submit" name="reviews-submit" value="Оставить отзыв">
    </form>
</div>
