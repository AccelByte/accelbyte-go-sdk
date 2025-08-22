// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package x_ray_config

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2clientmodels"
)

// AdminUpdateXRayConfigReader is a Reader for the AdminUpdateXRayConfig structure.
type AdminUpdateXRayConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateXRayConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminUpdateXRayConfigNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdateXRayConfigBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdateXRayConfigUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUpdateXRayConfigForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpdateXRayConfigInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /match2/v1/admin/namespaces/{namespace}/xray/config returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateXRayConfigNoContent creates a AdminUpdateXRayConfigNoContent with default headers values
func NewAdminUpdateXRayConfigNoContent() *AdminUpdateXRayConfigNoContent {
	return &AdminUpdateXRayConfigNoContent{}
}

/*AdminUpdateXRayConfigNoContent handles this case with default header values.

  No Content
*/
type AdminUpdateXRayConfigNoContent struct {
}

func (o *AdminUpdateXRayConfigNoContent) Error() string {
	return fmt.Sprintf("[POST /match2/v1/admin/namespaces/{namespace}/xray/config][%d] adminUpdateXRayConfigNoContent ", 204)
}

func (o *AdminUpdateXRayConfigNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminUpdateXRayConfigBadRequest creates a AdminUpdateXRayConfigBadRequest with default headers values
func NewAdminUpdateXRayConfigBadRequest() *AdminUpdateXRayConfigBadRequest {
	return &AdminUpdateXRayConfigBadRequest{}
}

/*AdminUpdateXRayConfigBadRequest handles this case with default header values.

  Bad Request
*/
type AdminUpdateXRayConfigBadRequest struct {
	Payload *match2clientmodels.ResponseError
}

func (o *AdminUpdateXRayConfigBadRequest) Error() string {
	return fmt.Sprintf("[POST /match2/v1/admin/namespaces/{namespace}/xray/config][%d] adminUpdateXRayConfigBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpdateXRayConfigBadRequest) ToJSONString() string {
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

func (o *AdminUpdateXRayConfigBadRequest) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateXRayConfigBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUpdateXRayConfigUnauthorized creates a AdminUpdateXRayConfigUnauthorized with default headers values
func NewAdminUpdateXRayConfigUnauthorized() *AdminUpdateXRayConfigUnauthorized {
	return &AdminUpdateXRayConfigUnauthorized{}
}

/*AdminUpdateXRayConfigUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminUpdateXRayConfigUnauthorized struct {
	Payload *match2clientmodels.ResponseError
}

func (o *AdminUpdateXRayConfigUnauthorized) Error() string {
	return fmt.Sprintf("[POST /match2/v1/admin/namespaces/{namespace}/xray/config][%d] adminUpdateXRayConfigUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdateXRayConfigUnauthorized) ToJSONString() string {
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

func (o *AdminUpdateXRayConfigUnauthorized) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateXRayConfigUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUpdateXRayConfigForbidden creates a AdminUpdateXRayConfigForbidden with default headers values
func NewAdminUpdateXRayConfigForbidden() *AdminUpdateXRayConfigForbidden {
	return &AdminUpdateXRayConfigForbidden{}
}

/*AdminUpdateXRayConfigForbidden handles this case with default header values.

  Forbidden
*/
type AdminUpdateXRayConfigForbidden struct {
	Payload *match2clientmodels.ResponseError
}

func (o *AdminUpdateXRayConfigForbidden) Error() string {
	return fmt.Sprintf("[POST /match2/v1/admin/namespaces/{namespace}/xray/config][%d] adminUpdateXRayConfigForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUpdateXRayConfigForbidden) ToJSONString() string {
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

func (o *AdminUpdateXRayConfigForbidden) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateXRayConfigForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUpdateXRayConfigInternalServerError creates a AdminUpdateXRayConfigInternalServerError with default headers values
func NewAdminUpdateXRayConfigInternalServerError() *AdminUpdateXRayConfigInternalServerError {
	return &AdminUpdateXRayConfigInternalServerError{}
}

/*AdminUpdateXRayConfigInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminUpdateXRayConfigInternalServerError struct {
	Payload *match2clientmodels.ResponseError
}

func (o *AdminUpdateXRayConfigInternalServerError) Error() string {
	return fmt.Sprintf("[POST /match2/v1/admin/namespaces/{namespace}/xray/config][%d] adminUpdateXRayConfigInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUpdateXRayConfigInternalServerError) ToJSONString() string {
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

func (o *AdminUpdateXRayConfigInternalServerError) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateXRayConfigInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
