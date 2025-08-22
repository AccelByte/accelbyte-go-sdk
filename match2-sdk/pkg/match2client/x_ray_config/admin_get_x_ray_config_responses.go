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

// AdminGetXRayConfigReader is a Reader for the AdminGetXRayConfig structure.
type AdminGetXRayConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetXRayConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetXRayConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetXRayConfigUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetXRayConfigForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetXRayConfigInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /match2/v1/admin/namespaces/{namespace}/xray/config returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetXRayConfigOK creates a AdminGetXRayConfigOK with default headers values
func NewAdminGetXRayConfigOK() *AdminGetXRayConfigOK {
	return &AdminGetXRayConfigOK{}
}

/*AdminGetXRayConfigOK handles this case with default header values.

  OK
*/
type AdminGetXRayConfigOK struct {
	Payload *match2clientmodels.ModelsXRayConfigHTTPResponse
}

func (o *AdminGetXRayConfigOK) Error() string {
	return fmt.Sprintf("[GET /match2/v1/admin/namespaces/{namespace}/xray/config][%d] adminGetXRayConfigOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetXRayConfigOK) ToJSONString() string {
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

func (o *AdminGetXRayConfigOK) GetPayload() *match2clientmodels.ModelsXRayConfigHTTPResponse {
	return o.Payload
}

func (o *AdminGetXRayConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ModelsXRayConfigHTTPResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetXRayConfigUnauthorized creates a AdminGetXRayConfigUnauthorized with default headers values
func NewAdminGetXRayConfigUnauthorized() *AdminGetXRayConfigUnauthorized {
	return &AdminGetXRayConfigUnauthorized{}
}

/*AdminGetXRayConfigUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetXRayConfigUnauthorized struct {
	Payload *match2clientmodels.ResponseError
}

func (o *AdminGetXRayConfigUnauthorized) Error() string {
	return fmt.Sprintf("[GET /match2/v1/admin/namespaces/{namespace}/xray/config][%d] adminGetXRayConfigUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetXRayConfigUnauthorized) ToJSONString() string {
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

func (o *AdminGetXRayConfigUnauthorized) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetXRayConfigUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetXRayConfigForbidden creates a AdminGetXRayConfigForbidden with default headers values
func NewAdminGetXRayConfigForbidden() *AdminGetXRayConfigForbidden {
	return &AdminGetXRayConfigForbidden{}
}

/*AdminGetXRayConfigForbidden handles this case with default header values.

  Forbidden
*/
type AdminGetXRayConfigForbidden struct {
	Payload *match2clientmodels.ResponseError
}

func (o *AdminGetXRayConfigForbidden) Error() string {
	return fmt.Sprintf("[GET /match2/v1/admin/namespaces/{namespace}/xray/config][%d] adminGetXRayConfigForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetXRayConfigForbidden) ToJSONString() string {
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

func (o *AdminGetXRayConfigForbidden) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetXRayConfigForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetXRayConfigInternalServerError creates a AdminGetXRayConfigInternalServerError with default headers values
func NewAdminGetXRayConfigInternalServerError() *AdminGetXRayConfigInternalServerError {
	return &AdminGetXRayConfigInternalServerError{}
}

/*AdminGetXRayConfigInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetXRayConfigInternalServerError struct {
	Payload *match2clientmodels.ResponseError
}

func (o *AdminGetXRayConfigInternalServerError) Error() string {
	return fmt.Sprintf("[GET /match2/v1/admin/namespaces/{namespace}/xray/config][%d] adminGetXRayConfigInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetXRayConfigInternalServerError) ToJSONString() string {
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

func (o *AdminGetXRayConfigInternalServerError) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetXRayConfigInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
