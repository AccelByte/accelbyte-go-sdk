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

// AdminPlatformUnlinkAllV3Reader is a Reader for the AdminPlatformUnlinkAllV3 structure.
type AdminPlatformUnlinkAllV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminPlatformUnlinkAllV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminPlatformUnlinkAllV3NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminPlatformUnlinkAllV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminPlatformUnlinkAllV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminPlatformUnlinkAllV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminPlatformUnlinkAllV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/all returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminPlatformUnlinkAllV3NoContent creates a AdminPlatformUnlinkAllV3NoContent with default headers values
func NewAdminPlatformUnlinkAllV3NoContent() *AdminPlatformUnlinkAllV3NoContent {
	return &AdminPlatformUnlinkAllV3NoContent{}
}

/*AdminPlatformUnlinkAllV3NoContent handles this case with default header values.

  Operation succeeded
*/
type AdminPlatformUnlinkAllV3NoContent struct {
}

func (o *AdminPlatformUnlinkAllV3NoContent) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/all][%d] adminPlatformUnlinkAllV3NoContent ", 204)
}

func (o *AdminPlatformUnlinkAllV3NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminPlatformUnlinkAllV3BadRequest creates a AdminPlatformUnlinkAllV3BadRequest with default headers values
func NewAdminPlatformUnlinkAllV3BadRequest() *AdminPlatformUnlinkAllV3BadRequest {
	return &AdminPlatformUnlinkAllV3BadRequest{}
}

/*AdminPlatformUnlinkAllV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminPlatformUnlinkAllV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminPlatformUnlinkAllV3BadRequest) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/all][%d] adminPlatformUnlinkAllV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminPlatformUnlinkAllV3BadRequest) ToJSONString() string {
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

func (o *AdminPlatformUnlinkAllV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminPlatformUnlinkAllV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminPlatformUnlinkAllV3Unauthorized creates a AdminPlatformUnlinkAllV3Unauthorized with default headers values
func NewAdminPlatformUnlinkAllV3Unauthorized() *AdminPlatformUnlinkAllV3Unauthorized {
	return &AdminPlatformUnlinkAllV3Unauthorized{}
}

/*AdminPlatformUnlinkAllV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminPlatformUnlinkAllV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminPlatformUnlinkAllV3Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/all][%d] adminPlatformUnlinkAllV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminPlatformUnlinkAllV3Unauthorized) ToJSONString() string {
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

func (o *AdminPlatformUnlinkAllV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminPlatformUnlinkAllV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminPlatformUnlinkAllV3NotFound creates a AdminPlatformUnlinkAllV3NotFound with default headers values
func NewAdminPlatformUnlinkAllV3NotFound() *AdminPlatformUnlinkAllV3NotFound {
	return &AdminPlatformUnlinkAllV3NotFound{}
}

/*AdminPlatformUnlinkAllV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type AdminPlatformUnlinkAllV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminPlatformUnlinkAllV3NotFound) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/all][%d] adminPlatformUnlinkAllV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminPlatformUnlinkAllV3NotFound) ToJSONString() string {
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

func (o *AdminPlatformUnlinkAllV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminPlatformUnlinkAllV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminPlatformUnlinkAllV3InternalServerError creates a AdminPlatformUnlinkAllV3InternalServerError with default headers values
func NewAdminPlatformUnlinkAllV3InternalServerError() *AdminPlatformUnlinkAllV3InternalServerError {
	return &AdminPlatformUnlinkAllV3InternalServerError{}
}

/*AdminPlatformUnlinkAllV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminPlatformUnlinkAllV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminPlatformUnlinkAllV3InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/all][%d] adminPlatformUnlinkAllV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminPlatformUnlinkAllV3InternalServerError) ToJSONString() string {
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

func (o *AdminPlatformUnlinkAllV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminPlatformUnlinkAllV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
