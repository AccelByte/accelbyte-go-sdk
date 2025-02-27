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

// InitiateGroupConfigurationAdminV1Reader is a Reader for the InitiateGroupConfigurationAdminV1 structure.
type InitiateGroupConfigurationAdminV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *InitiateGroupConfigurationAdminV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewInitiateGroupConfigurationAdminV1Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewInitiateGroupConfigurationAdminV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewInitiateGroupConfigurationAdminV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewInitiateGroupConfigurationAdminV1Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewInitiateGroupConfigurationAdminV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /group/v1/admin/namespaces/{namespace}/configuration/initiate returns an error %d: %s", response.Code(), string(data))
	}
}

// NewInitiateGroupConfigurationAdminV1Created creates a InitiateGroupConfigurationAdminV1Created with default headers values
func NewInitiateGroupConfigurationAdminV1Created() *InitiateGroupConfigurationAdminV1Created {
	return &InitiateGroupConfigurationAdminV1Created{}
}

/*InitiateGroupConfigurationAdminV1Created handles this case with default header values.

  Created
*/
type InitiateGroupConfigurationAdminV1Created struct {
	Payload *groupclientmodels.ModelsCreateGroupConfigurationResponseV1
}

func (o *InitiateGroupConfigurationAdminV1Created) Error() string {
	return fmt.Sprintf("[POST /group/v1/admin/namespaces/{namespace}/configuration/initiate][%d] initiateGroupConfigurationAdminV1Created  %+v", 201, o.ToJSONString())
}

func (o *InitiateGroupConfigurationAdminV1Created) ToJSONString() string {
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

func (o *InitiateGroupConfigurationAdminV1Created) GetPayload() *groupclientmodels.ModelsCreateGroupConfigurationResponseV1 {
	return o.Payload
}

func (o *InitiateGroupConfigurationAdminV1Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewInitiateGroupConfigurationAdminV1Unauthorized creates a InitiateGroupConfigurationAdminV1Unauthorized with default headers values
func NewInitiateGroupConfigurationAdminV1Unauthorized() *InitiateGroupConfigurationAdminV1Unauthorized {
	return &InitiateGroupConfigurationAdminV1Unauthorized{}
}

/*InitiateGroupConfigurationAdminV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type InitiateGroupConfigurationAdminV1Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *InitiateGroupConfigurationAdminV1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /group/v1/admin/namespaces/{namespace}/configuration/initiate][%d] initiateGroupConfigurationAdminV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *InitiateGroupConfigurationAdminV1Unauthorized) ToJSONString() string {
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

func (o *InitiateGroupConfigurationAdminV1Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *InitiateGroupConfigurationAdminV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewInitiateGroupConfigurationAdminV1Forbidden creates a InitiateGroupConfigurationAdminV1Forbidden with default headers values
func NewInitiateGroupConfigurationAdminV1Forbidden() *InitiateGroupConfigurationAdminV1Forbidden {
	return &InitiateGroupConfigurationAdminV1Forbidden{}
}

/*InitiateGroupConfigurationAdminV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type InitiateGroupConfigurationAdminV1Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *InitiateGroupConfigurationAdminV1Forbidden) Error() string {
	return fmt.Sprintf("[POST /group/v1/admin/namespaces/{namespace}/configuration/initiate][%d] initiateGroupConfigurationAdminV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *InitiateGroupConfigurationAdminV1Forbidden) ToJSONString() string {
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

func (o *InitiateGroupConfigurationAdminV1Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *InitiateGroupConfigurationAdminV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewInitiateGroupConfigurationAdminV1Conflict creates a InitiateGroupConfigurationAdminV1Conflict with default headers values
func NewInitiateGroupConfigurationAdminV1Conflict() *InitiateGroupConfigurationAdminV1Conflict {
	return &InitiateGroupConfigurationAdminV1Conflict{}
}

/*InitiateGroupConfigurationAdminV1Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73130</td><td>global configuration already exist</td></tr></table>
*/
type InitiateGroupConfigurationAdminV1Conflict struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *InitiateGroupConfigurationAdminV1Conflict) Error() string {
	return fmt.Sprintf("[POST /group/v1/admin/namespaces/{namespace}/configuration/initiate][%d] initiateGroupConfigurationAdminV1Conflict  %+v", 409, o.ToJSONString())
}

func (o *InitiateGroupConfigurationAdminV1Conflict) ToJSONString() string {
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

func (o *InitiateGroupConfigurationAdminV1Conflict) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *InitiateGroupConfigurationAdminV1Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewInitiateGroupConfigurationAdminV1InternalServerError creates a InitiateGroupConfigurationAdminV1InternalServerError with default headers values
func NewInitiateGroupConfigurationAdminV1InternalServerError() *InitiateGroupConfigurationAdminV1InternalServerError {
	return &InitiateGroupConfigurationAdminV1InternalServerError{}
}

/*InitiateGroupConfigurationAdminV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type InitiateGroupConfigurationAdminV1InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *InitiateGroupConfigurationAdminV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /group/v1/admin/namespaces/{namespace}/configuration/initiate][%d] initiateGroupConfigurationAdminV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *InitiateGroupConfigurationAdminV1InternalServerError) ToJSONString() string {
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

func (o *InitiateGroupConfigurationAdminV1InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *InitiateGroupConfigurationAdminV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
