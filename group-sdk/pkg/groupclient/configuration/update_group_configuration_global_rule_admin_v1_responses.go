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

// UpdateGroupConfigurationGlobalRuleAdminV1Reader is a Reader for the UpdateGroupConfigurationGlobalRuleAdminV1 structure.
type UpdateGroupConfigurationGlobalRuleAdminV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateGroupConfigurationGlobalRuleAdminV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateGroupConfigurationGlobalRuleAdminV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateGroupConfigurationGlobalRuleAdminV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateGroupConfigurationGlobalRuleAdminV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateGroupConfigurationGlobalRuleAdminV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateGroupConfigurationGlobalRuleAdminV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateGroupConfigurationGlobalRuleAdminV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}/rules/{allowedAction} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateGroupConfigurationGlobalRuleAdminV1OK creates a UpdateGroupConfigurationGlobalRuleAdminV1OK with default headers values
func NewUpdateGroupConfigurationGlobalRuleAdminV1OK() *UpdateGroupConfigurationGlobalRuleAdminV1OK {
	return &UpdateGroupConfigurationGlobalRuleAdminV1OK{}
}

/*UpdateGroupConfigurationGlobalRuleAdminV1OK handles this case with default header values.

  OK
*/
type UpdateGroupConfigurationGlobalRuleAdminV1OK struct {
	Payload *groupclientmodels.ModelsUpdateGroupConfigurationResponseV1
}

func (o *UpdateGroupConfigurationGlobalRuleAdminV1OK) Error() string {
	return fmt.Sprintf("[PUT /group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}/rules/{allowedAction}][%d] updateGroupConfigurationGlobalRuleAdminV1OK  %+v", 200, o.ToJSONString())
}

func (o *UpdateGroupConfigurationGlobalRuleAdminV1OK) ToJSONString() string {
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

func (o *UpdateGroupConfigurationGlobalRuleAdminV1OK) GetPayload() *groupclientmodels.ModelsUpdateGroupConfigurationResponseV1 {
	return o.Payload
}

func (o *UpdateGroupConfigurationGlobalRuleAdminV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ModelsUpdateGroupConfigurationResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateGroupConfigurationGlobalRuleAdminV1BadRequest creates a UpdateGroupConfigurationGlobalRuleAdminV1BadRequest with default headers values
func NewUpdateGroupConfigurationGlobalRuleAdminV1BadRequest() *UpdateGroupConfigurationGlobalRuleAdminV1BadRequest {
	return &UpdateGroupConfigurationGlobalRuleAdminV1BadRequest{}
}

/*UpdateGroupConfigurationGlobalRuleAdminV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type UpdateGroupConfigurationGlobalRuleAdminV1BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateGroupConfigurationGlobalRuleAdminV1BadRequest) Error() string {
	return fmt.Sprintf("[PUT /group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}/rules/{allowedAction}][%d] updateGroupConfigurationGlobalRuleAdminV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateGroupConfigurationGlobalRuleAdminV1BadRequest) ToJSONString() string {
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

func (o *UpdateGroupConfigurationGlobalRuleAdminV1BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateGroupConfigurationGlobalRuleAdminV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateGroupConfigurationGlobalRuleAdminV1Unauthorized creates a UpdateGroupConfigurationGlobalRuleAdminV1Unauthorized with default headers values
func NewUpdateGroupConfigurationGlobalRuleAdminV1Unauthorized() *UpdateGroupConfigurationGlobalRuleAdminV1Unauthorized {
	return &UpdateGroupConfigurationGlobalRuleAdminV1Unauthorized{}
}

/*UpdateGroupConfigurationGlobalRuleAdminV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type UpdateGroupConfigurationGlobalRuleAdminV1Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateGroupConfigurationGlobalRuleAdminV1Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}/rules/{allowedAction}][%d] updateGroupConfigurationGlobalRuleAdminV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateGroupConfigurationGlobalRuleAdminV1Unauthorized) ToJSONString() string {
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

func (o *UpdateGroupConfigurationGlobalRuleAdminV1Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateGroupConfigurationGlobalRuleAdminV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateGroupConfigurationGlobalRuleAdminV1Forbidden creates a UpdateGroupConfigurationGlobalRuleAdminV1Forbidden with default headers values
func NewUpdateGroupConfigurationGlobalRuleAdminV1Forbidden() *UpdateGroupConfigurationGlobalRuleAdminV1Forbidden {
	return &UpdateGroupConfigurationGlobalRuleAdminV1Forbidden{}
}

/*UpdateGroupConfigurationGlobalRuleAdminV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type UpdateGroupConfigurationGlobalRuleAdminV1Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateGroupConfigurationGlobalRuleAdminV1Forbidden) Error() string {
	return fmt.Sprintf("[PUT /group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}/rules/{allowedAction}][%d] updateGroupConfigurationGlobalRuleAdminV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateGroupConfigurationGlobalRuleAdminV1Forbidden) ToJSONString() string {
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

func (o *UpdateGroupConfigurationGlobalRuleAdminV1Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateGroupConfigurationGlobalRuleAdminV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateGroupConfigurationGlobalRuleAdminV1NotFound creates a UpdateGroupConfigurationGlobalRuleAdminV1NotFound with default headers values
func NewUpdateGroupConfigurationGlobalRuleAdminV1NotFound() *UpdateGroupConfigurationGlobalRuleAdminV1NotFound {
	return &UpdateGroupConfigurationGlobalRuleAdminV1NotFound{}
}

/*UpdateGroupConfigurationGlobalRuleAdminV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73131</td><td>global configuration not found</td></tr></table>
*/
type UpdateGroupConfigurationGlobalRuleAdminV1NotFound struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateGroupConfigurationGlobalRuleAdminV1NotFound) Error() string {
	return fmt.Sprintf("[PUT /group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}/rules/{allowedAction}][%d] updateGroupConfigurationGlobalRuleAdminV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateGroupConfigurationGlobalRuleAdminV1NotFound) ToJSONString() string {
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

func (o *UpdateGroupConfigurationGlobalRuleAdminV1NotFound) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateGroupConfigurationGlobalRuleAdminV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateGroupConfigurationGlobalRuleAdminV1InternalServerError creates a UpdateGroupConfigurationGlobalRuleAdminV1InternalServerError with default headers values
func NewUpdateGroupConfigurationGlobalRuleAdminV1InternalServerError() *UpdateGroupConfigurationGlobalRuleAdminV1InternalServerError {
	return &UpdateGroupConfigurationGlobalRuleAdminV1InternalServerError{}
}

/*UpdateGroupConfigurationGlobalRuleAdminV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type UpdateGroupConfigurationGlobalRuleAdminV1InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *UpdateGroupConfigurationGlobalRuleAdminV1InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}/rules/{allowedAction}][%d] updateGroupConfigurationGlobalRuleAdminV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateGroupConfigurationGlobalRuleAdminV1InternalServerError) ToJSONString() string {
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

func (o *UpdateGroupConfigurationGlobalRuleAdminV1InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateGroupConfigurationGlobalRuleAdminV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
