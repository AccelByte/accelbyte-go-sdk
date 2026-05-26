// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package managed_resources_key_value

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclientmodels"
)

// CreateKeyValueCredentialV2Reader is a Reader for the CreateKeyValueCredentialV2 structure.
type CreateKeyValueCredentialV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateKeyValueCredentialV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewCreateKeyValueCredentialV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateKeyValueCredentialV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateKeyValueCredentialV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewCreateKeyValueCredentialV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewCreateKeyValueCredentialV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateKeyValueCredentialV2Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreateKeyValueCredentialV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 503:
		result := NewCreateKeyValueCredentialV2ServiceUnavailable()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/credentials returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateKeyValueCredentialV2OK creates a CreateKeyValueCredentialV2OK with default headers values
func NewCreateKeyValueCredentialV2OK() *CreateKeyValueCredentialV2OK {
	return &CreateKeyValueCredentialV2OK{}
}

/*CreateKeyValueCredentialV2OK handles this case with default header values.

  OK
*/
type CreateKeyValueCredentialV2OK struct {
	Payload *csmclientmodels.ApimodelCreateKeyValueCredentialResponse
}

func (o *CreateKeyValueCredentialV2OK) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/credentials][%d] createKeyValueCredentialV2OK  %+v", 200, o.ToJSONString())
}

func (o *CreateKeyValueCredentialV2OK) ToJSONString() string {
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

func (o *CreateKeyValueCredentialV2OK) GetPayload() *csmclientmodels.ApimodelCreateKeyValueCredentialResponse {
	return o.Payload
}

func (o *CreateKeyValueCredentialV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ApimodelCreateKeyValueCredentialResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateKeyValueCredentialV2BadRequest creates a CreateKeyValueCredentialV2BadRequest with default headers values
func NewCreateKeyValueCredentialV2BadRequest() *CreateKeyValueCredentialV2BadRequest {
	return &CreateKeyValueCredentialV2BadRequest{}
}

/*CreateKeyValueCredentialV2BadRequest handles this case with default header values.

  Bad Request
*/
type CreateKeyValueCredentialV2BadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateKeyValueCredentialV2BadRequest) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/credentials][%d] createKeyValueCredentialV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateKeyValueCredentialV2BadRequest) ToJSONString() string {
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

func (o *CreateKeyValueCredentialV2BadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateKeyValueCredentialV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateKeyValueCredentialV2Unauthorized creates a CreateKeyValueCredentialV2Unauthorized with default headers values
func NewCreateKeyValueCredentialV2Unauthorized() *CreateKeyValueCredentialV2Unauthorized {
	return &CreateKeyValueCredentialV2Unauthorized{}
}

/*CreateKeyValueCredentialV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type CreateKeyValueCredentialV2Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateKeyValueCredentialV2Unauthorized) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/credentials][%d] createKeyValueCredentialV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreateKeyValueCredentialV2Unauthorized) ToJSONString() string {
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

func (o *CreateKeyValueCredentialV2Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateKeyValueCredentialV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateKeyValueCredentialV2Forbidden creates a CreateKeyValueCredentialV2Forbidden with default headers values
func NewCreateKeyValueCredentialV2Forbidden() *CreateKeyValueCredentialV2Forbidden {
	return &CreateKeyValueCredentialV2Forbidden{}
}

/*CreateKeyValueCredentialV2Forbidden handles this case with default header values.

  Forbidden
*/
type CreateKeyValueCredentialV2Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateKeyValueCredentialV2Forbidden) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/credentials][%d] createKeyValueCredentialV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *CreateKeyValueCredentialV2Forbidden) ToJSONString() string {
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

func (o *CreateKeyValueCredentialV2Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateKeyValueCredentialV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateKeyValueCredentialV2NotFound creates a CreateKeyValueCredentialV2NotFound with default headers values
func NewCreateKeyValueCredentialV2NotFound() *CreateKeyValueCredentialV2NotFound {
	return &CreateKeyValueCredentialV2NotFound{}
}

/*CreateKeyValueCredentialV2NotFound handles this case with default header values.

  Not Found
*/
type CreateKeyValueCredentialV2NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateKeyValueCredentialV2NotFound) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/credentials][%d] createKeyValueCredentialV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *CreateKeyValueCredentialV2NotFound) ToJSONString() string {
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

func (o *CreateKeyValueCredentialV2NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateKeyValueCredentialV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateKeyValueCredentialV2Conflict creates a CreateKeyValueCredentialV2Conflict with default headers values
func NewCreateKeyValueCredentialV2Conflict() *CreateKeyValueCredentialV2Conflict {
	return &CreateKeyValueCredentialV2Conflict{}
}

/*CreateKeyValueCredentialV2Conflict handles this case with default header values.

  Conflict
*/
type CreateKeyValueCredentialV2Conflict struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateKeyValueCredentialV2Conflict) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/credentials][%d] createKeyValueCredentialV2Conflict  %+v", 409, o.ToJSONString())
}

func (o *CreateKeyValueCredentialV2Conflict) ToJSONString() string {
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

func (o *CreateKeyValueCredentialV2Conflict) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateKeyValueCredentialV2Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateKeyValueCredentialV2InternalServerError creates a CreateKeyValueCredentialV2InternalServerError with default headers values
func NewCreateKeyValueCredentialV2InternalServerError() *CreateKeyValueCredentialV2InternalServerError {
	return &CreateKeyValueCredentialV2InternalServerError{}
}

/*CreateKeyValueCredentialV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type CreateKeyValueCredentialV2InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateKeyValueCredentialV2InternalServerError) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/credentials][%d] createKeyValueCredentialV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CreateKeyValueCredentialV2InternalServerError) ToJSONString() string {
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

func (o *CreateKeyValueCredentialV2InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateKeyValueCredentialV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateKeyValueCredentialV2ServiceUnavailable creates a CreateKeyValueCredentialV2ServiceUnavailable with default headers values
func NewCreateKeyValueCredentialV2ServiceUnavailable() *CreateKeyValueCredentialV2ServiceUnavailable {
	return &CreateKeyValueCredentialV2ServiceUnavailable{}
}

/*CreateKeyValueCredentialV2ServiceUnavailable handles this case with default header values.

  Service Unavailable
*/
type CreateKeyValueCredentialV2ServiceUnavailable struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateKeyValueCredentialV2ServiceUnavailable) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/credentials][%d] createKeyValueCredentialV2ServiceUnavailable  %+v", 503, o.ToJSONString())
}

func (o *CreateKeyValueCredentialV2ServiceUnavailable) ToJSONString() string {
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

func (o *CreateKeyValueCredentialV2ServiceUnavailable) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateKeyValueCredentialV2ServiceUnavailable) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
