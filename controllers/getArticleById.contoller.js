const {fetchArticleById} = require('../models/article.model.js')

exports.getArticleById = (req, res, next) => {
    const id = +req.params.article_id

    if (isNaN(+id)) return({ status: 400, message: 'bad request: this is not a number'})

    fetchArticleById(id).then((article) => {
        res.status(200).send({article})
    })
    .catch((err) => {
        next(err)
    })
}