// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package bans

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// AdminGetBansTypeV3Reader is a Reader for the AdminGetBansTypeV3 structure.
type AdminGetBansTypeV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetBansTypeV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetBansTypeV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetBansTypeV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetBansTypeV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetBansTypeV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/admin/bans returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetBansTypeV3OK creates a AdminGetBansTypeV3OK with default headers values
func NewAdminGetBansTypeV3OK() *AdminGetBansTypeV3OK {
	return &AdminGetBansTypeV3OK{}
}

/*AdminGetBansTypeV3OK handles this case with default header values.

  OK
*/
type AdminGetBansTypeV3OK struct {
	Payload *iamclientmodels.AccountcommonBansV3
}

func (o *AdminGetBansTypeV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/bans][%d] adminGetBansTypeV3OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetBansTypeV3OK) ToJSONString() string {
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

func (o *AdminGetBansTypeV3OK) GetPayload() *iamclientmodels.AccountcommonBansV3 {
	return o.Payload
}

func (o *AdminGetBansTypeV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.AccountcommonBansV3)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetBansTypeV3Unauthorized creates a AdminGetBansTypeV3Unauthorized with default headers values
func NewAdminGetBansTypeV3Unauthorized() *AdminGetBansTypeV3Unauthorized {
	return &AdminGetBansTypeV3Unauthorized{}
}

/*AdminGetBansTypeV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetBansTypeV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetBansTypeV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/bans][%d] adminGetBansTypeV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetBansTypeV3Unauthorized) ToJSONString() string {
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

func (o *AdminGetBansTypeV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetBansTypeV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetBansTypeV3Forbidden creates a AdminGetBansTypeV3Forbidden with default headers values
func NewAdminGetBansTypeV3Forbidden() *AdminGetBansTypeV3Forbidden {
	return &AdminGetBansTypeV3Forbidden{}
}

/*AdminGetBansTypeV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminGetBansTypeV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetBansTypeV3Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/bans][%d] adminGetBansTypeV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetBansTypeV3Forbidden) ToJSONString() string {
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

func (o *AdminGetBansTypeV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetBansTypeV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetBansTypeV3InternalServerError creates a AdminGetBansTypeV3InternalServerError with default headers values
func NewAdminGetBansTypeV3InternalServerError() *AdminGetBansTypeV3InternalServerError {
	return &AdminGetBansTypeV3InternalServerError{}
}

/*AdminGetBansTypeV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminGetBansTypeV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetBansTypeV3InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/bans][%d] adminGetBansTypeV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetBansTypeV3InternalServerError) ToJSONString() string {
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

func (o *AdminGetBansTypeV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetBansTypeV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
