// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package third_party

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

// AdminDeleteThirdPartyConfigReader is a Reader for the AdminDeleteThirdPartyConfig structure.
type AdminDeleteThirdPartyConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeleteThirdPartyConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminDeleteThirdPartyConfigNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminDeleteThirdPartyConfigBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDeleteThirdPartyConfigUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminDeleteThirdPartyConfigForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDeleteThirdPartyConfigInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeleteThirdPartyConfigNoContent creates a AdminDeleteThirdPartyConfigNoContent with default headers values
func NewAdminDeleteThirdPartyConfigNoContent() *AdminDeleteThirdPartyConfigNoContent {
	return &AdminDeleteThirdPartyConfigNoContent{}
}

/*AdminDeleteThirdPartyConfigNoContent handles this case with default header values.

  No Content
*/
type AdminDeleteThirdPartyConfigNoContent struct {
	Payload string
}

func (o *AdminDeleteThirdPartyConfigNoContent) Error() string {
	return fmt.Sprintf("[DELETE /lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam][%d] adminDeleteThirdPartyConfigNoContent  %+v", 204, o.ToJSONString())
}

func (o *AdminDeleteThirdPartyConfigNoContent) ToJSONString() string {
	if o.Payload == "" {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *AdminDeleteThirdPartyConfigNoContent) GetPayload() string {
	return o.Payload
}

func (o *AdminDeleteThirdPartyConfigNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminDeleteThirdPartyConfigBadRequest creates a AdminDeleteThirdPartyConfigBadRequest with default headers values
func NewAdminDeleteThirdPartyConfigBadRequest() *AdminDeleteThirdPartyConfigBadRequest {
	return &AdminDeleteThirdPartyConfigBadRequest{}
}

/*AdminDeleteThirdPartyConfigBadRequest handles this case with default header values.

  Bad Request
*/
type AdminDeleteThirdPartyConfigBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *AdminDeleteThirdPartyConfigBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam][%d] adminDeleteThirdPartyConfigBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminDeleteThirdPartyConfigBadRequest) ToJSONString() string {
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

func (o *AdminDeleteThirdPartyConfigBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *AdminDeleteThirdPartyConfigBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminDeleteThirdPartyConfigUnauthorized creates a AdminDeleteThirdPartyConfigUnauthorized with default headers values
func NewAdminDeleteThirdPartyConfigUnauthorized() *AdminDeleteThirdPartyConfigUnauthorized {
	return &AdminDeleteThirdPartyConfigUnauthorized{}
}

/*AdminDeleteThirdPartyConfigUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminDeleteThirdPartyConfigUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *AdminDeleteThirdPartyConfigUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam][%d] adminDeleteThirdPartyConfigUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDeleteThirdPartyConfigUnauthorized) ToJSONString() string {
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

func (o *AdminDeleteThirdPartyConfigUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *AdminDeleteThirdPartyConfigUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminDeleteThirdPartyConfigForbidden creates a AdminDeleteThirdPartyConfigForbidden with default headers values
func NewAdminDeleteThirdPartyConfigForbidden() *AdminDeleteThirdPartyConfigForbidden {
	return &AdminDeleteThirdPartyConfigForbidden{}
}

/*AdminDeleteThirdPartyConfigForbidden handles this case with default header values.

  Forbidden
*/
type AdminDeleteThirdPartyConfigForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *AdminDeleteThirdPartyConfigForbidden) Error() string {
	return fmt.Sprintf("[DELETE /lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam][%d] adminDeleteThirdPartyConfigForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminDeleteThirdPartyConfigForbidden) ToJSONString() string {
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

func (o *AdminDeleteThirdPartyConfigForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *AdminDeleteThirdPartyConfigForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminDeleteThirdPartyConfigInternalServerError creates a AdminDeleteThirdPartyConfigInternalServerError with default headers values
func NewAdminDeleteThirdPartyConfigInternalServerError() *AdminDeleteThirdPartyConfigInternalServerError {
	return &AdminDeleteThirdPartyConfigInternalServerError{}
}

/*AdminDeleteThirdPartyConfigInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminDeleteThirdPartyConfigInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *AdminDeleteThirdPartyConfigInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam][%d] adminDeleteThirdPartyConfigInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminDeleteThirdPartyConfigInternalServerError) ToJSONString() string {
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

func (o *AdminDeleteThirdPartyConfigInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *AdminDeleteThirdPartyConfigInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
