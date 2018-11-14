import React, { Component } from 'react'
import Popup from 'reactjs-popup'

class Recipe extends Component {
  // Initialize the state
  constructor(props) {
    super(props)
    this.state = {
      recipeName : this.props.location.state.recipe,
      recipeID : this.props.location.state.recipeID,
      ingredients : [],
      instructions : [],
      subIngredients : [],
      message : "",
      swapWith : ""
    }
  }

  // Fetch on first mount
  componentDidMount() {
    this.getRecipeInfo()
  }

  // Get Ingredients and Instructions
  getRecipeInfo = () => {
    fetch('http://localhost:5000/recipeInfo',{
      method : 'POST',
      body : JSON.stringify({'recipeID' : this.state.recipeID}),
      headers : {
        'Content-Type': 'application/json'
      }
    })
    .then(res => res.json())
    .then(data => {
      this.setState({ instructions : data[0] })
      this.setState({ ingredients : data[1] })
      console.log(this.state.instructions)
      console.log(this.state.ingredients)
    })
  }

  getSubIngredient = (ingredient) => {
    //event.preventDefault()
    //const ingredient = event.target.textContent
    this.setState({swapWith : ingredient})
    console.log("Substitute: ", ingredient)
    fetch('http://localhost:5000/recipeInfo',{
      method : 'POST',
      body : JSON.stringify({'ingredient' : ingredient}),
      headers : {
        'Content-Type': 'application/json'
      }
    })
    .then(res => res.json())
    .then(data => {
      this.setState({subIngredients : data[0]})
      this.setState({message : data[1]})
      console.log(this.state.subIngredients)
      console.log(this.state.message)
    })
  }


  render() {

    const swapIngredients = (subIngredient) => {
      //console.log("What I'm swapping: ", this.swapWith.current.textContent)
      //console.log("Swap the ingredient with this: ", subIngredient)
      //console.log("Current Ingredients: ", this.state.ingredients)
      var temp = this.state.ingredients
      for (let key in temp){
        //console.log(temp[key]['name'])
        if (temp[key]['name'] === this.state.swapWith){
          console.log("WHY: ",temp[key]['name'])
          temp[key]['name'] = subIngredient
          console.log(temp)
        }
      }
      this.setState({ingredients : temp})
      //console.log("Updated ingredients: " ,this.state.ingredients)
    }

    var displaySubstitutes
    if (this.state.subIngredients != null) {
      displaySubstitutes = this.state.subIngredients.map((subIngredient,index) => {
        return (
          <button key={index} className="button" onClick={swapIngredients.bind(this,subIngredient)}> 
            {subIngredient} 
          </button>
        )
      })
    }

    const recipeName = this.state.recipeName

    const ingredients = this.state.ingredients.map((ingredientInfo,index) => {
      var ingredient = Object.values(ingredientInfo)[4]
      return (
        <div key={index}>
          <Popup
            trigger={
              <button className="ingredientButton"> 
                {ingredient}
              </button>
            } 
            position="right center" 
            closeOnDocumentClick
            onOpen={this.getSubIngredient.bind(this,ingredient)}
            >
            <div>
              Select Ingredients
              <br/>
              {displaySubstitutes}
              <br/>
              {this.state.message}
            </div>
          </Popup>
        </div>
      )
    })

    const instructions = this.state.instructions.map((instruction,index) => {
      var instruction = Object.values(instruction)[1].replace(/\n|\r/g, "")
      return (
        <div key={index}>
          <text className="instructions"> 
            <strong> Step {index+1} </strong> 
            <br/>
            {instruction}
          </text>
          <br/>
          <br/>
        </div>
      )
    })

    return (
      <div className="App">
        <div>
          <br/>
          <h2> {recipeName} </h2>
          <br/>
        </div>
        <div>
          <h4> Ingredients </h4>
          {ingredients}
        </div>
        <br/>
        <br/>
        <div>
          {instructions}
        </div>
      </div>
    )
  }
}

export default Recipe