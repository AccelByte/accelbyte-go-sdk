// Code generated by go-swagger; DO NOT EDIT.

package reward

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"fmt"
	"io"
	"io/ioutil"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclientmodels"
)

// CreateRewardReader is a Reader for the CreateReward structure.
type CreateRewardReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateRewardReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateRewardCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateRewardBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewCreateRewardNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateRewardConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewCreateRewardUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateRewardCreated creates a CreateRewardCreated with default headers values
func NewCreateRewardCreated() *CreateRewardCreated {
	return &CreateRewardCreated{}
}

/*CreateRewardCreated handles this case with default header values.

  successful operation
*/
type CreateRewardCreated struct {
	Payload *seasonpassclientmodels.RewardInfo
}

func (o *CreateRewardCreated) Error() string {
	return fmt.Sprintf("[POST /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards][%d] createRewardCreated  %+v", 201, o.Payload)
}

func (o *CreateRewardCreated) GetPayload() *seasonpassclientmodels.RewardInfo {
	return o.Payload
}

func (o *CreateRewardCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(seasonpassclientmodels.RewardInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateRewardBadRequest creates a CreateRewardBadRequest with default headers values
func NewCreateRewardBadRequest() *CreateRewardBadRequest {
	return &CreateRewardBadRequest{}
}

/*CreateRewardBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20026</td><td>publisher namespace not allowed</td></tr><tr><td>49143</td><td>Item type not match</td></tr></table>
*/
type CreateRewardBadRequest struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *CreateRewardBadRequest) Error() string {
	return fmt.Sprintf("[POST /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards][%d] createRewardBadRequest  %+v", 400, o.Payload)
}

func (o *CreateRewardBadRequest) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateRewardBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(seasonpassclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateRewardNotFound creates a CreateRewardNotFound with default headers values
func NewCreateRewardNotFound() *CreateRewardNotFound {
	return &CreateRewardNotFound{}
}

/*CreateRewardNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30141</td><td>Store [{storeId}] does not exist in namespace [{namespace}]</td></tr><tr><td>30341</td><td>Item [{itemId}] does not exist in namespace [{namespace}]</td></tr><tr><td>49143</td><td>Season [{seasonId}] does not exist in namespace [{namespace}]</td></tr><tr><td>36141</td><td>Currency [{currencyCode}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type CreateRewardNotFound struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *CreateRewardNotFound) Error() string {
	return fmt.Sprintf("[POST /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards][%d] createRewardNotFound  %+v", 404, o.Payload)
}

func (o *CreateRewardNotFound) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateRewardNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(seasonpassclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateRewardConflict creates a CreateRewardConflict with default headers values
func NewCreateRewardConflict() *CreateRewardConflict {
	return &CreateRewardConflict{}
}

/*CreateRewardConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>49171</td><td>Invalid season status [{status}]</td></tr><tr><td>49173</td><td>Reward [{code}] already exists in the season</td></tr></table>
*/
type CreateRewardConflict struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *CreateRewardConflict) Error() string {
	return fmt.Sprintf("[POST /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards][%d] createRewardConflict  %+v", 409, o.Payload)
}

func (o *CreateRewardConflict) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateRewardConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(seasonpassclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateRewardUnprocessableEntity creates a CreateRewardUnprocessableEntity with default headers values
func NewCreateRewardUnprocessableEntity() *CreateRewardUnprocessableEntity {
	return &CreateRewardUnprocessableEntity{}
}

/*CreateRewardUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type CreateRewardUnprocessableEntity struct {
	Payload *seasonpassclientmodels.ValidationErrorEntity
}

func (o *CreateRewardUnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards][%d] createRewardUnprocessableEntity  %+v", 422, o.Payload)
}

func (o *CreateRewardUnprocessableEntity) GetPayload() *seasonpassclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *CreateRewardUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(seasonpassclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
