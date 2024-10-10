// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package country

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

// AdminGetCountryBlacklistV3Reader is a Reader for the AdminGetCountryBlacklistV3 structure.
type AdminGetCountryBlacklistV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetCountryBlacklistV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetCountryBlacklistV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetCountryBlacklistV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetCountryBlacklistV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetCountryBlacklistV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/admin/namespaces/{namespace}/countries/blacklist returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetCountryBlacklistV3OK creates a AdminGetCountryBlacklistV3OK with default headers values
func NewAdminGetCountryBlacklistV3OK() *AdminGetCountryBlacklistV3OK {
	return &AdminGetCountryBlacklistV3OK{}
}

/*AdminGetCountryBlacklistV3OK handles this case with default header values.

  OK
*/
type AdminGetCountryBlacklistV3OK struct {
	Payload *iamclientmodels.ModelCountryBlacklistResponse
}

func (o *AdminGetCountryBlacklistV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/countries/blacklist][%d] adminGetCountryBlacklistV3OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetCountryBlacklistV3OK) ToJSONString() string {
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

func (o *AdminGetCountryBlacklistV3OK) GetPayload() *iamclientmodels.ModelCountryBlacklistResponse {
	return o.Payload
}

func (o *AdminGetCountryBlacklistV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelCountryBlacklistResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetCountryBlacklistV3Unauthorized creates a AdminGetCountryBlacklistV3Unauthorized with default headers values
func NewAdminGetCountryBlacklistV3Unauthorized() *AdminGetCountryBlacklistV3Unauthorized {
	return &AdminGetCountryBlacklistV3Unauthorized{}
}

/*AdminGetCountryBlacklistV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetCountryBlacklistV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetCountryBlacklistV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/countries/blacklist][%d] adminGetCountryBlacklistV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetCountryBlacklistV3Unauthorized) ToJSONString() string {
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

func (o *AdminGetCountryBlacklistV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetCountryBlacklistV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetCountryBlacklistV3Forbidden creates a AdminGetCountryBlacklistV3Forbidden with default headers values
func NewAdminGetCountryBlacklistV3Forbidden() *AdminGetCountryBlacklistV3Forbidden {
	return &AdminGetCountryBlacklistV3Forbidden{}
}

/*AdminGetCountryBlacklistV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminGetCountryBlacklistV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetCountryBlacklistV3Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/countries/blacklist][%d] adminGetCountryBlacklistV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetCountryBlacklistV3Forbidden) ToJSONString() string {
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

func (o *AdminGetCountryBlacklistV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetCountryBlacklistV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetCountryBlacklistV3InternalServerError creates a AdminGetCountryBlacklistV3InternalServerError with default headers values
func NewAdminGetCountryBlacklistV3InternalServerError() *AdminGetCountryBlacklistV3InternalServerError {
	return &AdminGetCountryBlacklistV3InternalServerError{}
}

/*AdminGetCountryBlacklistV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminGetCountryBlacklistV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetCountryBlacklistV3InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/countries/blacklist][%d] adminGetCountryBlacklistV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetCountryBlacklistV3InternalServerError) ToJSONString() string {
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

func (o *AdminGetCountryBlacklistV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetCountryBlacklistV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
