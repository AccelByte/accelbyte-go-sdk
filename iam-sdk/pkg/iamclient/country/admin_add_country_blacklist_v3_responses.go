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

// AdminAddCountryBlacklistV3Reader is a Reader for the AdminAddCountryBlacklistV3 structure.
type AdminAddCountryBlacklistV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminAddCountryBlacklistV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminAddCountryBlacklistV3NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminAddCountryBlacklistV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminAddCountryBlacklistV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminAddCountryBlacklistV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminAddCountryBlacklistV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/admin/namespaces/{namespace}/countries/blacklist returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminAddCountryBlacklistV3NoContent creates a AdminAddCountryBlacklistV3NoContent with default headers values
func NewAdminAddCountryBlacklistV3NoContent() *AdminAddCountryBlacklistV3NoContent {
	return &AdminAddCountryBlacklistV3NoContent{}
}

/*AdminAddCountryBlacklistV3NoContent handles this case with default header values.

  No Content
*/
type AdminAddCountryBlacklistV3NoContent struct {
}

func (o *AdminAddCountryBlacklistV3NoContent) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/countries/blacklist][%d] adminAddCountryBlacklistV3NoContent ", 204)
}

func (o *AdminAddCountryBlacklistV3NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminAddCountryBlacklistV3BadRequest creates a AdminAddCountryBlacklistV3BadRequest with default headers values
func NewAdminAddCountryBlacklistV3BadRequest() *AdminAddCountryBlacklistV3BadRequest {
	return &AdminAddCountryBlacklistV3BadRequest{}
}

/*AdminAddCountryBlacklistV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminAddCountryBlacklistV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminAddCountryBlacklistV3BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/countries/blacklist][%d] adminAddCountryBlacklistV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminAddCountryBlacklistV3BadRequest) ToJSONString() string {
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

func (o *AdminAddCountryBlacklistV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminAddCountryBlacklistV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminAddCountryBlacklistV3Unauthorized creates a AdminAddCountryBlacklistV3Unauthorized with default headers values
func NewAdminAddCountryBlacklistV3Unauthorized() *AdminAddCountryBlacklistV3Unauthorized {
	return &AdminAddCountryBlacklistV3Unauthorized{}
}

/*AdminAddCountryBlacklistV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminAddCountryBlacklistV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminAddCountryBlacklistV3Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/countries/blacklist][%d] adminAddCountryBlacklistV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminAddCountryBlacklistV3Unauthorized) ToJSONString() string {
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

func (o *AdminAddCountryBlacklistV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminAddCountryBlacklistV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminAddCountryBlacklistV3Forbidden creates a AdminAddCountryBlacklistV3Forbidden with default headers values
func NewAdminAddCountryBlacklistV3Forbidden() *AdminAddCountryBlacklistV3Forbidden {
	return &AdminAddCountryBlacklistV3Forbidden{}
}

/*AdminAddCountryBlacklistV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminAddCountryBlacklistV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminAddCountryBlacklistV3Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/countries/blacklist][%d] adminAddCountryBlacklistV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminAddCountryBlacklistV3Forbidden) ToJSONString() string {
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

func (o *AdminAddCountryBlacklistV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminAddCountryBlacklistV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminAddCountryBlacklistV3InternalServerError creates a AdminAddCountryBlacklistV3InternalServerError with default headers values
func NewAdminAddCountryBlacklistV3InternalServerError() *AdminAddCountryBlacklistV3InternalServerError {
	return &AdminAddCountryBlacklistV3InternalServerError{}
}

/*AdminAddCountryBlacklistV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminAddCountryBlacklistV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminAddCountryBlacklistV3InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/countries/blacklist][%d] adminAddCountryBlacklistV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminAddCountryBlacklistV3InternalServerError) ToJSONString() string {
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

func (o *AdminAddCountryBlacklistV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminAddCountryBlacklistV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
