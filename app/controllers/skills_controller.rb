class SkillsController < ApplicationController
  def index
    @sectionText = "Skills"
    @skills = Skill.all
  end

  def show
    @skill = Skill.find(params[:id])
  end

  def new
    @skill = Skill.new
  end

  def create
    if params[:skill][:passwd] === 'hhMSPfh394Om00Rw'
      @skill = Skill.new(skill_params)

      if @skill.save
        redirect_to @skill
      else
        render :new, status: :unprocessable_entity
      end
    end
  end

  def edit
    @skill = Skill.find(params[:id])
  end

  def update
    if params[:skill][:passwd] === 'hhMSPfh394Om00Rw'
      @skill = Skill.find(params[:id])

      if @skill.update(skill_params)
        redirect_to @skill
      else
        render :eid, status: :unprocessable_entity
      end
    end
  end

  def destroy
    @skill = Skill.find(params[:id])
    @skill.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def skill_params
      params.require(:skill).permit(:title, :image, :summary)
    end
end
