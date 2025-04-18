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

// AdminGetThirdPartyConfigReader is a Reader for the AdminGetThirdPartyConfig structure.
type AdminGetThirdPartyConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetThirdPartyConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetThirdPartyConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetThirdPartyConfigBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetThirdPartyConfigUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetThirdPartyConfigForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetThirdPartyConfigInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetThirdPartyConfigOK creates a AdminGetThirdPartyConfigOK with default headers values
func NewAdminGetThirdPartyConfigOK() *AdminGetThirdPartyConfigOK {
	return &AdminGetThirdPartyConfigOK{}
}

/*AdminGetThirdPartyConfigOK handles this case with default header values.

  OK
*/
type AdminGetThirdPartyConfigOK struct {
	Payload *lobbyclientmodels.ModelsGetConfigResponse
}

func (o *AdminGetThirdPartyConfigOK) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam][%d] adminGetThirdPartyConfigOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetThirdPartyConfigOK) ToJSONString() string {
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

func (o *AdminGetThirdPartyConfigOK) GetPayload() *lobbyclientmodels.ModelsGetConfigResponse {
	return o.Payload
}

func (o *AdminGetThirdPartyConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.ModelsGetConfigResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetThirdPartyConfigBadRequest creates a AdminGetThirdPartyConfigBadRequest with default headers values
func NewAdminGetThirdPartyConfigBadRequest() *AdminGetThirdPartyConfigBadRequest {
	return &AdminGetThirdPartyConfigBadRequest{}
}

/*AdminGetThirdPartyConfigBadRequest handles this case with default header values.

  Bad Request
*/
type AdminGetThirdPartyConfigBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *AdminGetThirdPartyConfigBadRequest) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam][%d] adminGetThirdPartyConfigBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetThirdPartyConfigBadRequest) ToJSONString() string {
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

func (o *AdminGetThirdPartyConfigBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *AdminGetThirdPartyConfigBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetThirdPartyConfigUnauthorized creates a AdminGetThirdPartyConfigUnauthorized with default headers values
func NewAdminGetThirdPartyConfigUnauthorized() *AdminGetThirdPartyConfigUnauthorized {
	return &AdminGetThirdPartyConfigUnauthorized{}
}

/*AdminGetThirdPartyConfigUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetThirdPartyConfigUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *AdminGetThirdPartyConfigUnauthorized) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam][%d] adminGetThirdPartyConfigUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetThirdPartyConfigUnauthorized) ToJSONString() string {
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

func (o *AdminGetThirdPartyConfigUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *AdminGetThirdPartyConfigUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetThirdPartyConfigForbidden creates a AdminGetThirdPartyConfigForbidden with default headers values
func NewAdminGetThirdPartyConfigForbidden() *AdminGetThirdPartyConfigForbidden {
	return &AdminGetThirdPartyConfigForbidden{}
}

/*AdminGetThirdPartyConfigForbidden handles this case with default header values.

  Forbidden
*/
type AdminGetThirdPartyConfigForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *AdminGetThirdPartyConfigForbidden) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam][%d] adminGetThirdPartyConfigForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetThirdPartyConfigForbidden) ToJSONString() string {
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

func (o *AdminGetThirdPartyConfigForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *AdminGetThirdPartyConfigForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetThirdPartyConfigInternalServerError creates a AdminGetThirdPartyConfigInternalServerError with default headers values
func NewAdminGetThirdPartyConfigInternalServerError() *AdminGetThirdPartyConfigInternalServerError {
	return &AdminGetThirdPartyConfigInternalServerError{}
}

/*AdminGetThirdPartyConfigInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetThirdPartyConfigInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *AdminGetThirdPartyConfigInternalServerError) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam][%d] adminGetThirdPartyConfigInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetThirdPartyConfigInternalServerError) ToJSONString() string {
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

func (o *AdminGetThirdPartyConfigInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *AdminGetThirdPartyConfigInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
