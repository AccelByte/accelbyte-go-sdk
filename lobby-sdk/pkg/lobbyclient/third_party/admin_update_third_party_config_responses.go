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

// AdminUpdateThirdPartyConfigReader is a Reader for the AdminUpdateThirdPartyConfig structure.
type AdminUpdateThirdPartyConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateThirdPartyConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminUpdateThirdPartyConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdateThirdPartyConfigBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdateThirdPartyConfigUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUpdateThirdPartyConfigForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpdateThirdPartyConfigInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateThirdPartyConfigOK creates a AdminUpdateThirdPartyConfigOK with default headers values
func NewAdminUpdateThirdPartyConfigOK() *AdminUpdateThirdPartyConfigOK {
	return &AdminUpdateThirdPartyConfigOK{}
}

/*AdminUpdateThirdPartyConfigOK handles this case with default header values.

  OK
*/
type AdminUpdateThirdPartyConfigOK struct {
	Payload *lobbyclientmodels.ModelsUpdateConfigResponse
}

func (o *AdminUpdateThirdPartyConfigOK) Error() string {
	return fmt.Sprintf("[PUT /lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam][%d] adminUpdateThirdPartyConfigOK  %+v", 200, o.ToJSONString())
}

func (o *AdminUpdateThirdPartyConfigOK) ToJSONString() string {
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

func (o *AdminUpdateThirdPartyConfigOK) GetPayload() *lobbyclientmodels.ModelsUpdateConfigResponse {
	return o.Payload
}

func (o *AdminUpdateThirdPartyConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.ModelsUpdateConfigResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUpdateThirdPartyConfigBadRequest creates a AdminUpdateThirdPartyConfigBadRequest with default headers values
func NewAdminUpdateThirdPartyConfigBadRequest() *AdminUpdateThirdPartyConfigBadRequest {
	return &AdminUpdateThirdPartyConfigBadRequest{}
}

/*AdminUpdateThirdPartyConfigBadRequest handles this case with default header values.

  Bad Request
*/
type AdminUpdateThirdPartyConfigBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *AdminUpdateThirdPartyConfigBadRequest) Error() string {
	return fmt.Sprintf("[PUT /lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam][%d] adminUpdateThirdPartyConfigBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpdateThirdPartyConfigBadRequest) ToJSONString() string {
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

func (o *AdminUpdateThirdPartyConfigBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *AdminUpdateThirdPartyConfigBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateThirdPartyConfigUnauthorized creates a AdminUpdateThirdPartyConfigUnauthorized with default headers values
func NewAdminUpdateThirdPartyConfigUnauthorized() *AdminUpdateThirdPartyConfigUnauthorized {
	return &AdminUpdateThirdPartyConfigUnauthorized{}
}

/*AdminUpdateThirdPartyConfigUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminUpdateThirdPartyConfigUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *AdminUpdateThirdPartyConfigUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam][%d] adminUpdateThirdPartyConfigUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdateThirdPartyConfigUnauthorized) ToJSONString() string {
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

func (o *AdminUpdateThirdPartyConfigUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *AdminUpdateThirdPartyConfigUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateThirdPartyConfigForbidden creates a AdminUpdateThirdPartyConfigForbidden with default headers values
func NewAdminUpdateThirdPartyConfigForbidden() *AdminUpdateThirdPartyConfigForbidden {
	return &AdminUpdateThirdPartyConfigForbidden{}
}

/*AdminUpdateThirdPartyConfigForbidden handles this case with default header values.

  Forbidden
*/
type AdminUpdateThirdPartyConfigForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *AdminUpdateThirdPartyConfigForbidden) Error() string {
	return fmt.Sprintf("[PUT /lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam][%d] adminUpdateThirdPartyConfigForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUpdateThirdPartyConfigForbidden) ToJSONString() string {
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

func (o *AdminUpdateThirdPartyConfigForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *AdminUpdateThirdPartyConfigForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateThirdPartyConfigInternalServerError creates a AdminUpdateThirdPartyConfigInternalServerError with default headers values
func NewAdminUpdateThirdPartyConfigInternalServerError() *AdminUpdateThirdPartyConfigInternalServerError {
	return &AdminUpdateThirdPartyConfigInternalServerError{}
}

/*AdminUpdateThirdPartyConfigInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminUpdateThirdPartyConfigInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *AdminUpdateThirdPartyConfigInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam][%d] adminUpdateThirdPartyConfigInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUpdateThirdPartyConfigInternalServerError) ToJSONString() string {
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

func (o *AdminUpdateThirdPartyConfigInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *AdminUpdateThirdPartyConfigInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
