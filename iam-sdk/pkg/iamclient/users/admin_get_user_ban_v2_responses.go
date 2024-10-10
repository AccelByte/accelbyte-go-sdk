// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

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

// AdminGetUserBanV2Reader is a Reader for the AdminGetUserBanV2 structure.
type AdminGetUserBanV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetUserBanV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetUserBanV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetUserBanV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetUserBanV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetUserBanV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v2/admin/namespaces/{namespace}/users/{userId}/bans returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetUserBanV2OK creates a AdminGetUserBanV2OK with default headers values
func NewAdminGetUserBanV2OK() *AdminGetUserBanV2OK {
	return &AdminGetUserBanV2OK{}
}

/*AdminGetUserBanV2OK handles this case with default header values.

  OK
*/
type AdminGetUserBanV2OK struct {
	Payload []*iamclientmodels.ModelUserBanResponse
}

func (o *AdminGetUserBanV2OK) Error() string {
	return fmt.Sprintf("[GET /iam/v2/admin/namespaces/{namespace}/users/{userId}/bans][%d] adminGetUserBanV2OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetUserBanV2OK) ToJSONString() string {
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

func (o *AdminGetUserBanV2OK) GetPayload() []*iamclientmodels.ModelUserBanResponse {
	return o.Payload
}

func (o *AdminGetUserBanV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetUserBanV2Unauthorized creates a AdminGetUserBanV2Unauthorized with default headers values
func NewAdminGetUserBanV2Unauthorized() *AdminGetUserBanV2Unauthorized {
	return &AdminGetUserBanV2Unauthorized{}
}

/*AdminGetUserBanV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetUserBanV2Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetUserBanV2Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v2/admin/namespaces/{namespace}/users/{userId}/bans][%d] adminGetUserBanV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetUserBanV2Unauthorized) ToJSONString() string {
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

func (o *AdminGetUserBanV2Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetUserBanV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetUserBanV2Forbidden creates a AdminGetUserBanV2Forbidden with default headers values
func NewAdminGetUserBanV2Forbidden() *AdminGetUserBanV2Forbidden {
	return &AdminGetUserBanV2Forbidden{}
}

/*AdminGetUserBanV2Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminGetUserBanV2Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetUserBanV2Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v2/admin/namespaces/{namespace}/users/{userId}/bans][%d] adminGetUserBanV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetUserBanV2Forbidden) ToJSONString() string {
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

func (o *AdminGetUserBanV2Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetUserBanV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetUserBanV2NotFound creates a AdminGetUserBanV2NotFound with default headers values
func NewAdminGetUserBanV2NotFound() *AdminGetUserBanV2NotFound {
	return &AdminGetUserBanV2NotFound{}
}

/*AdminGetUserBanV2NotFound handles this case with default header values.

  Data not found
*/
type AdminGetUserBanV2NotFound struct {
}

func (o *AdminGetUserBanV2NotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v2/admin/namespaces/{namespace}/users/{userId}/bans][%d] adminGetUserBanV2NotFound ", 404)
}

func (o *AdminGetUserBanV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
