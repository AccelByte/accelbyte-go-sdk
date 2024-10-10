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

// AdminGetThirdPartyPlatformTokenLinkStatusV3Reader is a Reader for the AdminGetThirdPartyPlatformTokenLinkStatusV3 structure.
type AdminGetThirdPartyPlatformTokenLinkStatusV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetThirdPartyPlatformTokenLinkStatusV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetThirdPartyPlatformTokenLinkStatusV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetThirdPartyPlatformTokenLinkStatusV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetThirdPartyPlatformTokenLinkStatusV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetThirdPartyPlatformTokenLinkStatusV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetThirdPartyPlatformTokenLinkStatusV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetThirdPartyPlatformTokenLinkStatusV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/linkStatus returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetThirdPartyPlatformTokenLinkStatusV3OK creates a AdminGetThirdPartyPlatformTokenLinkStatusV3OK with default headers values
func NewAdminGetThirdPartyPlatformTokenLinkStatusV3OK() *AdminGetThirdPartyPlatformTokenLinkStatusV3OK {
	return &AdminGetThirdPartyPlatformTokenLinkStatusV3OK{}
}

/*AdminGetThirdPartyPlatformTokenLinkStatusV3OK handles this case with default header values.

  OK
*/
type AdminGetThirdPartyPlatformTokenLinkStatusV3OK struct {
	Payload *iamclientmodels.ModelTokenThirdPartyLinkStatusResponse
}

func (o *AdminGetThirdPartyPlatformTokenLinkStatusV3OK) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/linkStatus][%d] adminGetThirdPartyPlatformTokenLinkStatusV3OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetThirdPartyPlatformTokenLinkStatusV3OK) ToJSONString() string {
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

func (o *AdminGetThirdPartyPlatformTokenLinkStatusV3OK) GetPayload() *iamclientmodels.ModelTokenThirdPartyLinkStatusResponse {
	return o.Payload
}

func (o *AdminGetThirdPartyPlatformTokenLinkStatusV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelTokenThirdPartyLinkStatusResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetThirdPartyPlatformTokenLinkStatusV3BadRequest creates a AdminGetThirdPartyPlatformTokenLinkStatusV3BadRequest with default headers values
func NewAdminGetThirdPartyPlatformTokenLinkStatusV3BadRequest() *AdminGetThirdPartyPlatformTokenLinkStatusV3BadRequest {
	return &AdminGetThirdPartyPlatformTokenLinkStatusV3BadRequest{}
}

/*AdminGetThirdPartyPlatformTokenLinkStatusV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>10208</td><td>platform token expired</td></tr></table>
*/
type AdminGetThirdPartyPlatformTokenLinkStatusV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetThirdPartyPlatformTokenLinkStatusV3BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/linkStatus][%d] adminGetThirdPartyPlatformTokenLinkStatusV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetThirdPartyPlatformTokenLinkStatusV3BadRequest) ToJSONString() string {
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

func (o *AdminGetThirdPartyPlatformTokenLinkStatusV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetThirdPartyPlatformTokenLinkStatusV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetThirdPartyPlatformTokenLinkStatusV3Unauthorized creates a AdminGetThirdPartyPlatformTokenLinkStatusV3Unauthorized with default headers values
func NewAdminGetThirdPartyPlatformTokenLinkStatusV3Unauthorized() *AdminGetThirdPartyPlatformTokenLinkStatusV3Unauthorized {
	return &AdminGetThirdPartyPlatformTokenLinkStatusV3Unauthorized{}
}

/*AdminGetThirdPartyPlatformTokenLinkStatusV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetThirdPartyPlatformTokenLinkStatusV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetThirdPartyPlatformTokenLinkStatusV3Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/linkStatus][%d] adminGetThirdPartyPlatformTokenLinkStatusV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetThirdPartyPlatformTokenLinkStatusV3Unauthorized) ToJSONString() string {
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

func (o *AdminGetThirdPartyPlatformTokenLinkStatusV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetThirdPartyPlatformTokenLinkStatusV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetThirdPartyPlatformTokenLinkStatusV3Forbidden creates a AdminGetThirdPartyPlatformTokenLinkStatusV3Forbidden with default headers values
func NewAdminGetThirdPartyPlatformTokenLinkStatusV3Forbidden() *AdminGetThirdPartyPlatformTokenLinkStatusV3Forbidden {
	return &AdminGetThirdPartyPlatformTokenLinkStatusV3Forbidden{}
}

/*AdminGetThirdPartyPlatformTokenLinkStatusV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20003</td><td>forbidden access</td></tr></table>
*/
type AdminGetThirdPartyPlatformTokenLinkStatusV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetThirdPartyPlatformTokenLinkStatusV3Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/linkStatus][%d] adminGetThirdPartyPlatformTokenLinkStatusV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetThirdPartyPlatformTokenLinkStatusV3Forbidden) ToJSONString() string {
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

func (o *AdminGetThirdPartyPlatformTokenLinkStatusV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetThirdPartyPlatformTokenLinkStatusV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetThirdPartyPlatformTokenLinkStatusV3NotFound creates a AdminGetThirdPartyPlatformTokenLinkStatusV3NotFound with default headers values
func NewAdminGetThirdPartyPlatformTokenLinkStatusV3NotFound() *AdminGetThirdPartyPlatformTokenLinkStatusV3NotFound {
	return &AdminGetThirdPartyPlatformTokenLinkStatusV3NotFound{}
}

/*AdminGetThirdPartyPlatformTokenLinkStatusV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10139</td><td>platform account not found</td></tr></table>
*/
type AdminGetThirdPartyPlatformTokenLinkStatusV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetThirdPartyPlatformTokenLinkStatusV3NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/linkStatus][%d] adminGetThirdPartyPlatformTokenLinkStatusV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetThirdPartyPlatformTokenLinkStatusV3NotFound) ToJSONString() string {
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

func (o *AdminGetThirdPartyPlatformTokenLinkStatusV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetThirdPartyPlatformTokenLinkStatusV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetThirdPartyPlatformTokenLinkStatusV3InternalServerError creates a AdminGetThirdPartyPlatformTokenLinkStatusV3InternalServerError with default headers values
func NewAdminGetThirdPartyPlatformTokenLinkStatusV3InternalServerError() *AdminGetThirdPartyPlatformTokenLinkStatusV3InternalServerError {
	return &AdminGetThirdPartyPlatformTokenLinkStatusV3InternalServerError{}
}

/*AdminGetThirdPartyPlatformTokenLinkStatusV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminGetThirdPartyPlatformTokenLinkStatusV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetThirdPartyPlatformTokenLinkStatusV3InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/linkStatus][%d] adminGetThirdPartyPlatformTokenLinkStatusV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetThirdPartyPlatformTokenLinkStatusV3InternalServerError) ToJSONString() string {
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

func (o *AdminGetThirdPartyPlatformTokenLinkStatusV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetThirdPartyPlatformTokenLinkStatusV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
