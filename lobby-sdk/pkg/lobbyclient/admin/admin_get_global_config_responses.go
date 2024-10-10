// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
)

// AdminGetGlobalConfigReader is a Reader for the AdminGetGlobalConfig structure.
type AdminGetGlobalConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetGlobalConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetGlobalConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetGlobalConfigBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetGlobalConfigUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetGlobalConfigForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetGlobalConfigNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetGlobalConfigInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /lobby/v1/admin/global-configurations returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetGlobalConfigOK creates a AdminGetGlobalConfigOK with default headers values
func NewAdminGetGlobalConfigOK() *AdminGetGlobalConfigOK {
	return &AdminGetGlobalConfigOK{}
}

/*AdminGetGlobalConfigOK handles this case with default header values.

  OK
*/
type AdminGetGlobalConfigOK struct {
	Payload *lobbyclientmodels.ModelGlobalConfiguration
}

func (o *AdminGetGlobalConfigOK) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/global-configurations][%d] adminGetGlobalConfigOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetGlobalConfigOK) ToJSONString() string {
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

func (o *AdminGetGlobalConfigOK) GetPayload() *lobbyclientmodels.ModelGlobalConfiguration {
	return o.Payload
}

func (o *AdminGetGlobalConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.ModelGlobalConfiguration)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetGlobalConfigBadRequest creates a AdminGetGlobalConfigBadRequest with default headers values
func NewAdminGetGlobalConfigBadRequest() *AdminGetGlobalConfigBadRequest {
	return &AdminGetGlobalConfigBadRequest{}
}

/*AdminGetGlobalConfigBadRequest handles this case with default header values.

  Bad Request
*/
type AdminGetGlobalConfigBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetGlobalConfigBadRequest) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/global-configurations][%d] adminGetGlobalConfigBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetGlobalConfigBadRequest) ToJSONString() string {
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

func (o *AdminGetGlobalConfigBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetGlobalConfigBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetGlobalConfigUnauthorized creates a AdminGetGlobalConfigUnauthorized with default headers values
func NewAdminGetGlobalConfigUnauthorized() *AdminGetGlobalConfigUnauthorized {
	return &AdminGetGlobalConfigUnauthorized{}
}

/*AdminGetGlobalConfigUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetGlobalConfigUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetGlobalConfigUnauthorized) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/global-configurations][%d] adminGetGlobalConfigUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetGlobalConfigUnauthorized) ToJSONString() string {
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

func (o *AdminGetGlobalConfigUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetGlobalConfigUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetGlobalConfigForbidden creates a AdminGetGlobalConfigForbidden with default headers values
func NewAdminGetGlobalConfigForbidden() *AdminGetGlobalConfigForbidden {
	return &AdminGetGlobalConfigForbidden{}
}

/*AdminGetGlobalConfigForbidden handles this case with default header values.

  Forbidden
*/
type AdminGetGlobalConfigForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetGlobalConfigForbidden) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/global-configurations][%d] adminGetGlobalConfigForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetGlobalConfigForbidden) ToJSONString() string {
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

func (o *AdminGetGlobalConfigForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetGlobalConfigForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetGlobalConfigNotFound creates a AdminGetGlobalConfigNotFound with default headers values
func NewAdminGetGlobalConfigNotFound() *AdminGetGlobalConfigNotFound {
	return &AdminGetGlobalConfigNotFound{}
}

/*AdminGetGlobalConfigNotFound handles this case with default header values.

  Not Found
*/
type AdminGetGlobalConfigNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetGlobalConfigNotFound) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/global-configurations][%d] adminGetGlobalConfigNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetGlobalConfigNotFound) ToJSONString() string {
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

func (o *AdminGetGlobalConfigNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetGlobalConfigNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetGlobalConfigInternalServerError creates a AdminGetGlobalConfigInternalServerError with default headers values
func NewAdminGetGlobalConfigInternalServerError() *AdminGetGlobalConfigInternalServerError {
	return &AdminGetGlobalConfigInternalServerError{}
}

/*AdminGetGlobalConfigInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetGlobalConfigInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetGlobalConfigInternalServerError) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/global-configurations][%d] adminGetGlobalConfigInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetGlobalConfigInternalServerError) ToJSONString() string {
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

func (o *AdminGetGlobalConfigInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetGlobalConfigInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
