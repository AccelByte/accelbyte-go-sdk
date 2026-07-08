// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package app_v5

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

// CreateAppV5Reader is a Reader for the CreateAppV5 structure.
type CreateAppV5Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateAppV5Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewCreateAppV5OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateAppV5BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateAppV5Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewCreateAppV5Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateAppV5Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreateAppV5InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /csm/v5/admin/namespaces/{namespace}/apps/{app} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateAppV5OK creates a CreateAppV5OK with default headers values
func NewCreateAppV5OK() *CreateAppV5OK {
	return &CreateAppV5OK{}
}

/*CreateAppV5OK handles this case with default header values.

  OK
*/
type CreateAppV5OK struct {
	Payload *csmclientmodels.ApimodelAppItemV5
}

func (o *CreateAppV5OK) Error() string {
	return fmt.Sprintf("[POST /csm/v5/admin/namespaces/{namespace}/apps/{app}][%d] createAppV5OK  %+v", 200, o.ToJSONString())
}

func (o *CreateAppV5OK) ToJSONString() string {
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

func (o *CreateAppV5OK) GetPayload() *csmclientmodels.ApimodelAppItemV5 {
	return o.Payload
}

func (o *CreateAppV5OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ApimodelAppItemV5)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateAppV5BadRequest creates a CreateAppV5BadRequest with default headers values
func NewCreateAppV5BadRequest() *CreateAppV5BadRequest {
	return &CreateAppV5BadRequest{}
}

/*CreateAppV5BadRequest handles this case with default header values.

  Bad Request
*/
type CreateAppV5BadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateAppV5BadRequest) Error() string {
	return fmt.Sprintf("[POST /csm/v5/admin/namespaces/{namespace}/apps/{app}][%d] createAppV5BadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateAppV5BadRequest) ToJSONString() string {
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

func (o *CreateAppV5BadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateAppV5BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateAppV5Unauthorized creates a CreateAppV5Unauthorized with default headers values
func NewCreateAppV5Unauthorized() *CreateAppV5Unauthorized {
	return &CreateAppV5Unauthorized{}
}

/*CreateAppV5Unauthorized handles this case with default header values.

  Unauthorized
*/
type CreateAppV5Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateAppV5Unauthorized) Error() string {
	return fmt.Sprintf("[POST /csm/v5/admin/namespaces/{namespace}/apps/{app}][%d] createAppV5Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreateAppV5Unauthorized) ToJSONString() string {
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

func (o *CreateAppV5Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateAppV5Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateAppV5Forbidden creates a CreateAppV5Forbidden with default headers values
func NewCreateAppV5Forbidden() *CreateAppV5Forbidden {
	return &CreateAppV5Forbidden{}
}

/*CreateAppV5Forbidden handles this case with default header values.

  Forbidden
*/
type CreateAppV5Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateAppV5Forbidden) Error() string {
	return fmt.Sprintf("[POST /csm/v5/admin/namespaces/{namespace}/apps/{app}][%d] createAppV5Forbidden  %+v", 403, o.ToJSONString())
}

func (o *CreateAppV5Forbidden) ToJSONString() string {
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

func (o *CreateAppV5Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateAppV5Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateAppV5Conflict creates a CreateAppV5Conflict with default headers values
func NewCreateAppV5Conflict() *CreateAppV5Conflict {
	return &CreateAppV5Conflict{}
}

/*CreateAppV5Conflict handles this case with default header values.

  Conflict
*/
type CreateAppV5Conflict struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateAppV5Conflict) Error() string {
	return fmt.Sprintf("[POST /csm/v5/admin/namespaces/{namespace}/apps/{app}][%d] createAppV5Conflict  %+v", 409, o.ToJSONString())
}

func (o *CreateAppV5Conflict) ToJSONString() string {
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

func (o *CreateAppV5Conflict) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateAppV5Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateAppV5InternalServerError creates a CreateAppV5InternalServerError with default headers values
func NewCreateAppV5InternalServerError() *CreateAppV5InternalServerError {
	return &CreateAppV5InternalServerError{}
}

/*CreateAppV5InternalServerError handles this case with default header values.

  Internal Server Error
*/
type CreateAppV5InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateAppV5InternalServerError) Error() string {
	return fmt.Sprintf("[POST /csm/v5/admin/namespaces/{namespace}/apps/{app}][%d] createAppV5InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CreateAppV5InternalServerError) ToJSONString() string {
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

func (o *CreateAppV5InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateAppV5InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
