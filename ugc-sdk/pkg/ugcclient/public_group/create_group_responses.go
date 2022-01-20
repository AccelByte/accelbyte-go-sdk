// Code generated by go-swagger; DO NOT EDIT.

package public_group

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"fmt"
	"io"
	"io/ioutil"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
)

// CreateGroupReader is a Reader for the CreateGroup structure.
type CreateGroupReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateGroupReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateGroupCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateGroupBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateGroupUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreateGroupInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /ugc/v1/public/namespaces/{namespace}/users/{userId}/groups returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateGroupCreated creates a CreateGroupCreated with default headers values
func NewCreateGroupCreated() *CreateGroupCreated {
	return &CreateGroupCreated{}
}

/*CreateGroupCreated handles this case with default header values.

  Created
*/
type CreateGroupCreated struct {
	Payload *ugcclientmodels.ModelsCreateGroupResponse
}

func (o *CreateGroupCreated) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/public/namespaces/{namespace}/users/{userId}/groups][%d] createGroupCreated  %+v", 201, o.Payload)
}

func (o *CreateGroupCreated) GetPayload() *ugcclientmodels.ModelsCreateGroupResponse {
	return o.Payload
}

func (o *CreateGroupCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ModelsCreateGroupResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateGroupBadRequest creates a CreateGroupBadRequest with default headers values
func NewCreateGroupBadRequest() *CreateGroupBadRequest {
	return &CreateGroupBadRequest{}
}

/*CreateGroupBadRequest handles this case with default header values.

  Bad Request
*/
type CreateGroupBadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *CreateGroupBadRequest) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/public/namespaces/{namespace}/users/{userId}/groups][%d] createGroupBadRequest  %+v", 400, o.Payload)
}

func (o *CreateGroupBadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateGroupBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateGroupUnauthorized creates a CreateGroupUnauthorized with default headers values
func NewCreateGroupUnauthorized() *CreateGroupUnauthorized {
	return &CreateGroupUnauthorized{}
}

/*CreateGroupUnauthorized handles this case with default header values.

  Unauthorized
*/
type CreateGroupUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *CreateGroupUnauthorized) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/public/namespaces/{namespace}/users/{userId}/groups][%d] createGroupUnauthorized  %+v", 401, o.Payload)
}

func (o *CreateGroupUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateGroupUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateGroupInternalServerError creates a CreateGroupInternalServerError with default headers values
func NewCreateGroupInternalServerError() *CreateGroupInternalServerError {
	return &CreateGroupInternalServerError{}
}

/*CreateGroupInternalServerError handles this case with default header values.

  Internal Server Error
*/
type CreateGroupInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *CreateGroupInternalServerError) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/public/namespaces/{namespace}/users/{userId}/groups][%d] createGroupInternalServerError  %+v", 500, o.Payload)
}

func (o *CreateGroupInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateGroupInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}