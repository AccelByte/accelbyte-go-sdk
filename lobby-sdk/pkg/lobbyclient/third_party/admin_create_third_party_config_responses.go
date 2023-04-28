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

// AdminCreateThirdPartyConfigReader is a Reader for the AdminCreateThirdPartyConfig structure.
type AdminCreateThirdPartyConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminCreateThirdPartyConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewAdminCreateThirdPartyConfigCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminCreateThirdPartyConfigBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminCreateThirdPartyConfigUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminCreateThirdPartyConfigForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAdminCreateThirdPartyConfigConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminCreateThirdPartyConfigInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminCreateThirdPartyConfigCreated creates a AdminCreateThirdPartyConfigCreated with default headers values
func NewAdminCreateThirdPartyConfigCreated() *AdminCreateThirdPartyConfigCreated {
	return &AdminCreateThirdPartyConfigCreated{}
}

/*AdminCreateThirdPartyConfigCreated handles this case with default header values.

  Created
*/
type AdminCreateThirdPartyConfigCreated struct {
	Payload *lobbyclientmodels.ModelsCreateConfigResponse
}

func (o *AdminCreateThirdPartyConfigCreated) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam][%d] adminCreateThirdPartyConfigCreated  %+v", 201, o.ToJSONString())
}

func (o *AdminCreateThirdPartyConfigCreated) ToJSONString() string {
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

func (o *AdminCreateThirdPartyConfigCreated) GetPayload() *lobbyclientmodels.ModelsCreateConfigResponse {
	return o.Payload
}

func (o *AdminCreateThirdPartyConfigCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.ModelsCreateConfigResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminCreateThirdPartyConfigBadRequest creates a AdminCreateThirdPartyConfigBadRequest with default headers values
func NewAdminCreateThirdPartyConfigBadRequest() *AdminCreateThirdPartyConfigBadRequest {
	return &AdminCreateThirdPartyConfigBadRequest{}
}

/*AdminCreateThirdPartyConfigBadRequest handles this case with default header values.

  Bad Request
*/
type AdminCreateThirdPartyConfigBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *AdminCreateThirdPartyConfigBadRequest) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam][%d] adminCreateThirdPartyConfigBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminCreateThirdPartyConfigBadRequest) ToJSONString() string {
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

func (o *AdminCreateThirdPartyConfigBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *AdminCreateThirdPartyConfigBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminCreateThirdPartyConfigUnauthorized creates a AdminCreateThirdPartyConfigUnauthorized with default headers values
func NewAdminCreateThirdPartyConfigUnauthorized() *AdminCreateThirdPartyConfigUnauthorized {
	return &AdminCreateThirdPartyConfigUnauthorized{}
}

/*AdminCreateThirdPartyConfigUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminCreateThirdPartyConfigUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *AdminCreateThirdPartyConfigUnauthorized) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam][%d] adminCreateThirdPartyConfigUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminCreateThirdPartyConfigUnauthorized) ToJSONString() string {
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

func (o *AdminCreateThirdPartyConfigUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *AdminCreateThirdPartyConfigUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminCreateThirdPartyConfigForbidden creates a AdminCreateThirdPartyConfigForbidden with default headers values
func NewAdminCreateThirdPartyConfigForbidden() *AdminCreateThirdPartyConfigForbidden {
	return &AdminCreateThirdPartyConfigForbidden{}
}

/*AdminCreateThirdPartyConfigForbidden handles this case with default header values.

  Forbidden
*/
type AdminCreateThirdPartyConfigForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *AdminCreateThirdPartyConfigForbidden) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam][%d] adminCreateThirdPartyConfigForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminCreateThirdPartyConfigForbidden) ToJSONString() string {
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

func (o *AdminCreateThirdPartyConfigForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *AdminCreateThirdPartyConfigForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminCreateThirdPartyConfigConflict creates a AdminCreateThirdPartyConfigConflict with default headers values
func NewAdminCreateThirdPartyConfigConflict() *AdminCreateThirdPartyConfigConflict {
	return &AdminCreateThirdPartyConfigConflict{}
}

/*AdminCreateThirdPartyConfigConflict handles this case with default header values.

  Conflict
*/
type AdminCreateThirdPartyConfigConflict struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *AdminCreateThirdPartyConfigConflict) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam][%d] adminCreateThirdPartyConfigConflict  %+v", 409, o.ToJSONString())
}

func (o *AdminCreateThirdPartyConfigConflict) ToJSONString() string {
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

func (o *AdminCreateThirdPartyConfigConflict) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *AdminCreateThirdPartyConfigConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminCreateThirdPartyConfigInternalServerError creates a AdminCreateThirdPartyConfigInternalServerError with default headers values
func NewAdminCreateThirdPartyConfigInternalServerError() *AdminCreateThirdPartyConfigInternalServerError {
	return &AdminCreateThirdPartyConfigInternalServerError{}
}

/*AdminCreateThirdPartyConfigInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminCreateThirdPartyConfigInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *AdminCreateThirdPartyConfigInternalServerError) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam][%d] adminCreateThirdPartyConfigInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminCreateThirdPartyConfigInternalServerError) ToJSONString() string {
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

func (o *AdminCreateThirdPartyConfigInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *AdminCreateThirdPartyConfigInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
