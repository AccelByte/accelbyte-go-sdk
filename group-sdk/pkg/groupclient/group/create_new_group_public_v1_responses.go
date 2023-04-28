// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package group

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclientmodels"
)

// CreateNewGroupPublicV1Reader is a Reader for the CreateNewGroupPublicV1 structure.
type CreateNewGroupPublicV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateNewGroupPublicV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateNewGroupPublicV1Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateNewGroupPublicV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateNewGroupPublicV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewCreateNewGroupPublicV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateNewGroupPublicV1Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreateNewGroupPublicV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /group/v1/public/namespaces/{namespace}/groups returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateNewGroupPublicV1Created creates a CreateNewGroupPublicV1Created with default headers values
func NewCreateNewGroupPublicV1Created() *CreateNewGroupPublicV1Created {
	return &CreateNewGroupPublicV1Created{}
}

/*CreateNewGroupPublicV1Created handles this case with default header values.

  Created
*/
type CreateNewGroupPublicV1Created struct {
	Payload *groupclientmodels.ModelsGroupResponseV1
}

func (o *CreateNewGroupPublicV1Created) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/groups][%d] createNewGroupPublicV1Created  %+v", 201, o.ToJSONString())
}

func (o *CreateNewGroupPublicV1Created) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *CreateNewGroupPublicV1Created) GetPayload() *groupclientmodels.ModelsGroupResponseV1 {
	return o.Payload
}

func (o *CreateNewGroupPublicV1Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ModelsGroupResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateNewGroupPublicV1BadRequest creates a CreateNewGroupPublicV1BadRequest with default headers values
func NewCreateNewGroupPublicV1BadRequest() *CreateNewGroupPublicV1BadRequest {
	return &CreateNewGroupPublicV1BadRequest{}
}

/*CreateNewGroupPublicV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type CreateNewGroupPublicV1BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *CreateNewGroupPublicV1BadRequest) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/groups][%d] createNewGroupPublicV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateNewGroupPublicV1BadRequest) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *CreateNewGroupPublicV1BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateNewGroupPublicV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateNewGroupPublicV1Unauthorized creates a CreateNewGroupPublicV1Unauthorized with default headers values
func NewCreateNewGroupPublicV1Unauthorized() *CreateNewGroupPublicV1Unauthorized {
	return &CreateNewGroupPublicV1Unauthorized{}
}

/*CreateNewGroupPublicV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type CreateNewGroupPublicV1Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *CreateNewGroupPublicV1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/groups][%d] createNewGroupPublicV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreateNewGroupPublicV1Unauthorized) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *CreateNewGroupPublicV1Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateNewGroupPublicV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateNewGroupPublicV1Forbidden creates a CreateNewGroupPublicV1Forbidden with default headers values
func NewCreateNewGroupPublicV1Forbidden() *CreateNewGroupPublicV1Forbidden {
	return &CreateNewGroupPublicV1Forbidden{}
}

/*CreateNewGroupPublicV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type CreateNewGroupPublicV1Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *CreateNewGroupPublicV1Forbidden) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/groups][%d] createNewGroupPublicV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *CreateNewGroupPublicV1Forbidden) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *CreateNewGroupPublicV1Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateNewGroupPublicV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateNewGroupPublicV1Conflict creates a CreateNewGroupPublicV1Conflict with default headers values
func NewCreateNewGroupPublicV1Conflict() *CreateNewGroupPublicV1Conflict {
	return &CreateNewGroupPublicV1Conflict{}
}

/*CreateNewGroupPublicV1Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73342</td><td>user already joined group</td></tr></table>
*/
type CreateNewGroupPublicV1Conflict struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *CreateNewGroupPublicV1Conflict) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/groups][%d] createNewGroupPublicV1Conflict  %+v", 409, o.ToJSONString())
}

func (o *CreateNewGroupPublicV1Conflict) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *CreateNewGroupPublicV1Conflict) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateNewGroupPublicV1Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateNewGroupPublicV1InternalServerError creates a CreateNewGroupPublicV1InternalServerError with default headers values
func NewCreateNewGroupPublicV1InternalServerError() *CreateNewGroupPublicV1InternalServerError {
	return &CreateNewGroupPublicV1InternalServerError{}
}

/*CreateNewGroupPublicV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type CreateNewGroupPublicV1InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *CreateNewGroupPublicV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/groups][%d] createNewGroupPublicV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CreateNewGroupPublicV1InternalServerError) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *CreateNewGroupPublicV1InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateNewGroupPublicV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
