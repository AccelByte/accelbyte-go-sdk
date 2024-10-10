// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package login_allowlist

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

// AdminGetLoginAllowlistV3Reader is a Reader for the AdminGetLoginAllowlistV3 structure.
type AdminGetLoginAllowlistV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetLoginAllowlistV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetLoginAllowlistV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetLoginAllowlistV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetLoginAllowlistV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetLoginAllowlistV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/admin/namespaces/{namespace}/loginAllowlist returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetLoginAllowlistV3OK creates a AdminGetLoginAllowlistV3OK with default headers values
func NewAdminGetLoginAllowlistV3OK() *AdminGetLoginAllowlistV3OK {
	return &AdminGetLoginAllowlistV3OK{}
}

/*AdminGetLoginAllowlistV3OK handles this case with default header values.

  Operation succeeded
*/
type AdminGetLoginAllowlistV3OK struct {
	Payload *iamclientmodels.ModelLoginAllowlistResponse
}

func (o *AdminGetLoginAllowlistV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/loginAllowlist][%d] adminGetLoginAllowlistV3OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetLoginAllowlistV3OK) ToJSONString() string {
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

func (o *AdminGetLoginAllowlistV3OK) GetPayload() *iamclientmodels.ModelLoginAllowlistResponse {
	return o.Payload
}

func (o *AdminGetLoginAllowlistV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelLoginAllowlistResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetLoginAllowlistV3Unauthorized creates a AdminGetLoginAllowlistV3Unauthorized with default headers values
func NewAdminGetLoginAllowlistV3Unauthorized() *AdminGetLoginAllowlistV3Unauthorized {
	return &AdminGetLoginAllowlistV3Unauthorized{}
}

/*AdminGetLoginAllowlistV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetLoginAllowlistV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetLoginAllowlistV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/loginAllowlist][%d] adminGetLoginAllowlistV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetLoginAllowlistV3Unauthorized) ToJSONString() string {
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

func (o *AdminGetLoginAllowlistV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetLoginAllowlistV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetLoginAllowlistV3Forbidden creates a AdminGetLoginAllowlistV3Forbidden with default headers values
func NewAdminGetLoginAllowlistV3Forbidden() *AdminGetLoginAllowlistV3Forbidden {
	return &AdminGetLoginAllowlistV3Forbidden{}
}

/*AdminGetLoginAllowlistV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminGetLoginAllowlistV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetLoginAllowlistV3Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/loginAllowlist][%d] adminGetLoginAllowlistV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetLoginAllowlistV3Forbidden) ToJSONString() string {
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

func (o *AdminGetLoginAllowlistV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetLoginAllowlistV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetLoginAllowlistV3InternalServerError creates a AdminGetLoginAllowlistV3InternalServerError with default headers values
func NewAdminGetLoginAllowlistV3InternalServerError() *AdminGetLoginAllowlistV3InternalServerError {
	return &AdminGetLoginAllowlistV3InternalServerError{}
}

/*AdminGetLoginAllowlistV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminGetLoginAllowlistV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetLoginAllowlistV3InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/loginAllowlist][%d] adminGetLoginAllowlistV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetLoginAllowlistV3InternalServerError) ToJSONString() string {
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

func (o *AdminGetLoginAllowlistV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetLoginAllowlistV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
