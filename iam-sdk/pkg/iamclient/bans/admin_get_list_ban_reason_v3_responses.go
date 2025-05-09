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

// AdminGetListBanReasonV3Reader is a Reader for the AdminGetListBanReasonV3 structure.
type AdminGetListBanReasonV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetListBanReasonV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetListBanReasonV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetListBanReasonV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetListBanReasonV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetListBanReasonV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/admin/bans/reasons returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetListBanReasonV3OK creates a AdminGetListBanReasonV3OK with default headers values
func NewAdminGetListBanReasonV3OK() *AdminGetListBanReasonV3OK {
	return &AdminGetListBanReasonV3OK{}
}

/*AdminGetListBanReasonV3OK handles this case with default header values.

  OK
*/
type AdminGetListBanReasonV3OK struct {
	Payload *iamclientmodels.AccountcommonBanReasonsV3
}

func (o *AdminGetListBanReasonV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/bans/reasons][%d] adminGetListBanReasonV3OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetListBanReasonV3OK) ToJSONString() string {
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

func (o *AdminGetListBanReasonV3OK) GetPayload() *iamclientmodels.AccountcommonBanReasonsV3 {
	return o.Payload
}

func (o *AdminGetListBanReasonV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.AccountcommonBanReasonsV3)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetListBanReasonV3Unauthorized creates a AdminGetListBanReasonV3Unauthorized with default headers values
func NewAdminGetListBanReasonV3Unauthorized() *AdminGetListBanReasonV3Unauthorized {
	return &AdminGetListBanReasonV3Unauthorized{}
}

/*AdminGetListBanReasonV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetListBanReasonV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetListBanReasonV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/bans/reasons][%d] adminGetListBanReasonV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetListBanReasonV3Unauthorized) ToJSONString() string {
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

func (o *AdminGetListBanReasonV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetListBanReasonV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetListBanReasonV3Forbidden creates a AdminGetListBanReasonV3Forbidden with default headers values
func NewAdminGetListBanReasonV3Forbidden() *AdminGetListBanReasonV3Forbidden {
	return &AdminGetListBanReasonV3Forbidden{}
}

/*AdminGetListBanReasonV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminGetListBanReasonV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetListBanReasonV3Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/bans/reasons][%d] adminGetListBanReasonV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetListBanReasonV3Forbidden) ToJSONString() string {
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

func (o *AdminGetListBanReasonV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetListBanReasonV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetListBanReasonV3InternalServerError creates a AdminGetListBanReasonV3InternalServerError with default headers values
func NewAdminGetListBanReasonV3InternalServerError() *AdminGetListBanReasonV3InternalServerError {
	return &AdminGetListBanReasonV3InternalServerError{}
}

/*AdminGetListBanReasonV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminGetListBanReasonV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetListBanReasonV3InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/bans/reasons][%d] adminGetListBanReasonV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetListBanReasonV3InternalServerError) ToJSONString() string {
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

func (o *AdminGetListBanReasonV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetListBanReasonV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
