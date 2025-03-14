// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package configuration

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

// CreateGroupConfigurationAdminV1Reader is a Reader for the CreateGroupConfigurationAdminV1 structure.
type CreateGroupConfigurationAdminV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateGroupConfigurationAdminV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateGroupConfigurationAdminV1Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateGroupConfigurationAdminV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateGroupConfigurationAdminV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewCreateGroupConfigurationAdminV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateGroupConfigurationAdminV1Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreateGroupConfigurationAdminV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /group/v1/admin/namespaces/{namespace}/configuration returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateGroupConfigurationAdminV1Created creates a CreateGroupConfigurationAdminV1Created with default headers values
func NewCreateGroupConfigurationAdminV1Created() *CreateGroupConfigurationAdminV1Created {
	return &CreateGroupConfigurationAdminV1Created{}
}

/*CreateGroupConfigurationAdminV1Created handles this case with default header values.

  Created
*/
type CreateGroupConfigurationAdminV1Created struct {
	Payload *groupclientmodels.ModelsCreateGroupConfigurationResponseV1
}

func (o *CreateGroupConfigurationAdminV1Created) Error() string {
	return fmt.Sprintf("[POST /group/v1/admin/namespaces/{namespace}/configuration][%d] createGroupConfigurationAdminV1Created  %+v", 201, o.ToJSONString())
}

func (o *CreateGroupConfigurationAdminV1Created) ToJSONString() string {
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

func (o *CreateGroupConfigurationAdminV1Created) GetPayload() *groupclientmodels.ModelsCreateGroupConfigurationResponseV1 {
	return o.Payload
}

func (o *CreateGroupConfigurationAdminV1Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ModelsCreateGroupConfigurationResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateGroupConfigurationAdminV1BadRequest creates a CreateGroupConfigurationAdminV1BadRequest with default headers values
func NewCreateGroupConfigurationAdminV1BadRequest() *CreateGroupConfigurationAdminV1BadRequest {
	return &CreateGroupConfigurationAdminV1BadRequest{}
}

/*CreateGroupConfigurationAdminV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type CreateGroupConfigurationAdminV1BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *CreateGroupConfigurationAdminV1BadRequest) Error() string {
	return fmt.Sprintf("[POST /group/v1/admin/namespaces/{namespace}/configuration][%d] createGroupConfigurationAdminV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateGroupConfigurationAdminV1BadRequest) ToJSONString() string {
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

func (o *CreateGroupConfigurationAdminV1BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateGroupConfigurationAdminV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateGroupConfigurationAdminV1Unauthorized creates a CreateGroupConfigurationAdminV1Unauthorized with default headers values
func NewCreateGroupConfigurationAdminV1Unauthorized() *CreateGroupConfigurationAdminV1Unauthorized {
	return &CreateGroupConfigurationAdminV1Unauthorized{}
}

/*CreateGroupConfigurationAdminV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type CreateGroupConfigurationAdminV1Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *CreateGroupConfigurationAdminV1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /group/v1/admin/namespaces/{namespace}/configuration][%d] createGroupConfigurationAdminV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreateGroupConfigurationAdminV1Unauthorized) ToJSONString() string {
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

func (o *CreateGroupConfigurationAdminV1Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateGroupConfigurationAdminV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateGroupConfigurationAdminV1Forbidden creates a CreateGroupConfigurationAdminV1Forbidden with default headers values
func NewCreateGroupConfigurationAdminV1Forbidden() *CreateGroupConfigurationAdminV1Forbidden {
	return &CreateGroupConfigurationAdminV1Forbidden{}
}

/*CreateGroupConfigurationAdminV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type CreateGroupConfigurationAdminV1Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *CreateGroupConfigurationAdminV1Forbidden) Error() string {
	return fmt.Sprintf("[POST /group/v1/admin/namespaces/{namespace}/configuration][%d] createGroupConfigurationAdminV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *CreateGroupConfigurationAdminV1Forbidden) ToJSONString() string {
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

func (o *CreateGroupConfigurationAdminV1Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateGroupConfigurationAdminV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateGroupConfigurationAdminV1Conflict creates a CreateGroupConfigurationAdminV1Conflict with default headers values
func NewCreateGroupConfigurationAdminV1Conflict() *CreateGroupConfigurationAdminV1Conflict {
	return &CreateGroupConfigurationAdminV1Conflict{}
}

/*CreateGroupConfigurationAdminV1Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73130</td><td>global configuration already exist</td></tr></table>
*/
type CreateGroupConfigurationAdminV1Conflict struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *CreateGroupConfigurationAdminV1Conflict) Error() string {
	return fmt.Sprintf("[POST /group/v1/admin/namespaces/{namespace}/configuration][%d] createGroupConfigurationAdminV1Conflict  %+v", 409, o.ToJSONString())
}

func (o *CreateGroupConfigurationAdminV1Conflict) ToJSONString() string {
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

func (o *CreateGroupConfigurationAdminV1Conflict) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateGroupConfigurationAdminV1Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateGroupConfigurationAdminV1InternalServerError creates a CreateGroupConfigurationAdminV1InternalServerError with default headers values
func NewCreateGroupConfigurationAdminV1InternalServerError() *CreateGroupConfigurationAdminV1InternalServerError {
	return &CreateGroupConfigurationAdminV1InternalServerError{}
}

/*CreateGroupConfigurationAdminV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type CreateGroupConfigurationAdminV1InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *CreateGroupConfigurationAdminV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /group/v1/admin/namespaces/{namespace}/configuration][%d] createGroupConfigurationAdminV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CreateGroupConfigurationAdminV1InternalServerError) ToJSONString() string {
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

func (o *CreateGroupConfigurationAdminV1InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateGroupConfigurationAdminV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
