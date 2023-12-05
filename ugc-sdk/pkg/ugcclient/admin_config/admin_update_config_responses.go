// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_config

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
)

// AdminUpdateConfigReader is a Reader for the AdminUpdateConfig structure.
type AdminUpdateConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewAdminUpdateConfigCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdateConfigBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdateConfigUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUpdateConfigForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpdateConfigInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /ugc/v2/admin/namespaces/{namespace}/configs/{key} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateConfigCreated creates a AdminUpdateConfigCreated with default headers values
func NewAdminUpdateConfigCreated() *AdminUpdateConfigCreated {
	return &AdminUpdateConfigCreated{}
}

/*AdminUpdateConfigCreated handles this case with default header values.

  Created
*/
type AdminUpdateConfigCreated struct {
}

func (o *AdminUpdateConfigCreated) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/admin/namespaces/{namespace}/configs/{key}][%d] adminUpdateConfigCreated ", 201)
}

func (o *AdminUpdateConfigCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminUpdateConfigBadRequest creates a AdminUpdateConfigBadRequest with default headers values
func NewAdminUpdateConfigBadRequest() *AdminUpdateConfigBadRequest {
	return &AdminUpdateConfigBadRequest{}
}

/*AdminUpdateConfigBadRequest handles this case with default header values.

  Bad Request
*/
type AdminUpdateConfigBadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateConfigBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/admin/namespaces/{namespace}/configs/{key}][%d] adminUpdateConfigBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpdateConfigBadRequest) ToJSONString() string {
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

func (o *AdminUpdateConfigBadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateConfigBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUpdateConfigUnauthorized creates a AdminUpdateConfigUnauthorized with default headers values
func NewAdminUpdateConfigUnauthorized() *AdminUpdateConfigUnauthorized {
	return &AdminUpdateConfigUnauthorized{}
}

/*AdminUpdateConfigUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminUpdateConfigUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateConfigUnauthorized) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/admin/namespaces/{namespace}/configs/{key}][%d] adminUpdateConfigUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdateConfigUnauthorized) ToJSONString() string {
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

func (o *AdminUpdateConfigUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateConfigUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUpdateConfigForbidden creates a AdminUpdateConfigForbidden with default headers values
func NewAdminUpdateConfigForbidden() *AdminUpdateConfigForbidden {
	return &AdminUpdateConfigForbidden{}
}

/*AdminUpdateConfigForbidden handles this case with default header values.

  Forbidden
*/
type AdminUpdateConfigForbidden struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateConfigForbidden) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/admin/namespaces/{namespace}/configs/{key}][%d] adminUpdateConfigForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUpdateConfigForbidden) ToJSONString() string {
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

func (o *AdminUpdateConfigForbidden) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateConfigForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUpdateConfigInternalServerError creates a AdminUpdateConfigInternalServerError with default headers values
func NewAdminUpdateConfigInternalServerError() *AdminUpdateConfigInternalServerError {
	return &AdminUpdateConfigInternalServerError{}
}

/*AdminUpdateConfigInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminUpdateConfigInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateConfigInternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/admin/namespaces/{namespace}/configs/{key}][%d] adminUpdateConfigInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUpdateConfigInternalServerError) ToJSONString() string {
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

func (o *AdminUpdateConfigInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateConfigInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
