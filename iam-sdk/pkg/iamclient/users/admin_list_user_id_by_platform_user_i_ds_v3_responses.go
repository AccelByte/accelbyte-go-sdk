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

// AdminListUserIDByPlatformUserIDsV3Reader is a Reader for the AdminListUserIDByPlatformUserIDsV3 structure.
type AdminListUserIDByPlatformUserIDsV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminListUserIDByPlatformUserIDsV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminListUserIDByPlatformUserIDsV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminListUserIDByPlatformUserIDsV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminListUserIDByPlatformUserIDsV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminListUserIDByPlatformUserIDsV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminListUserIDByPlatformUserIDsV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/users returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminListUserIDByPlatformUserIDsV3OK creates a AdminListUserIDByPlatformUserIDsV3OK with default headers values
func NewAdminListUserIDByPlatformUserIDsV3OK() *AdminListUserIDByPlatformUserIDsV3OK {
	return &AdminListUserIDByPlatformUserIDsV3OK{}
}

/*AdminListUserIDByPlatformUserIDsV3OK handles this case with default header values.

  OK
*/
type AdminListUserIDByPlatformUserIDsV3OK struct {
	Payload *iamclientmodels.AccountcommonUserPlatforms
}

func (o *AdminListUserIDByPlatformUserIDsV3OK) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/users][%d] adminListUserIdByPlatformUserIDsV3OK  %+v", 200, o.ToJSONString())
}

func (o *AdminListUserIDByPlatformUserIDsV3OK) ToJSONString() string {
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

func (o *AdminListUserIDByPlatformUserIDsV3OK) GetPayload() *iamclientmodels.AccountcommonUserPlatforms {
	return o.Payload
}

func (o *AdminListUserIDByPlatformUserIDsV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.AccountcommonUserPlatforms)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminListUserIDByPlatformUserIDsV3BadRequest creates a AdminListUserIDByPlatformUserIDsV3BadRequest with default headers values
func NewAdminListUserIDByPlatformUserIDsV3BadRequest() *AdminListUserIDByPlatformUserIDsV3BadRequest {
	return &AdminListUserIDByPlatformUserIDsV3BadRequest{}
}

/*AdminListUserIDByPlatformUserIDsV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminListUserIDByPlatformUserIDsV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminListUserIDByPlatformUserIDsV3BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/users][%d] adminListUserIdByPlatformUserIDsV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminListUserIDByPlatformUserIDsV3BadRequest) ToJSONString() string {
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

func (o *AdminListUserIDByPlatformUserIDsV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminListUserIDByPlatformUserIDsV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminListUserIDByPlatformUserIDsV3Unauthorized creates a AdminListUserIDByPlatformUserIDsV3Unauthorized with default headers values
func NewAdminListUserIDByPlatformUserIDsV3Unauthorized() *AdminListUserIDByPlatformUserIDsV3Unauthorized {
	return &AdminListUserIDByPlatformUserIDsV3Unauthorized{}
}

/*AdminListUserIDByPlatformUserIDsV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminListUserIDByPlatformUserIDsV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminListUserIDByPlatformUserIDsV3Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/users][%d] adminListUserIdByPlatformUserIDsV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminListUserIDByPlatformUserIDsV3Unauthorized) ToJSONString() string {
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

func (o *AdminListUserIDByPlatformUserIDsV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminListUserIDByPlatformUserIDsV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminListUserIDByPlatformUserIDsV3Forbidden creates a AdminListUserIDByPlatformUserIDsV3Forbidden with default headers values
func NewAdminListUserIDByPlatformUserIDsV3Forbidden() *AdminListUserIDByPlatformUserIDsV3Forbidden {
	return &AdminListUserIDByPlatformUserIDsV3Forbidden{}
}

/*AdminListUserIDByPlatformUserIDsV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminListUserIDByPlatformUserIDsV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminListUserIDByPlatformUserIDsV3Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/users][%d] adminListUserIdByPlatformUserIDsV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminListUserIDByPlatformUserIDsV3Forbidden) ToJSONString() string {
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

func (o *AdminListUserIDByPlatformUserIDsV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminListUserIDByPlatformUserIDsV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminListUserIDByPlatformUserIDsV3InternalServerError creates a AdminListUserIDByPlatformUserIDsV3InternalServerError with default headers values
func NewAdminListUserIDByPlatformUserIDsV3InternalServerError() *AdminListUserIDByPlatformUserIDsV3InternalServerError {
	return &AdminListUserIDByPlatformUserIDsV3InternalServerError{}
}

/*AdminListUserIDByPlatformUserIDsV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminListUserIDByPlatformUserIDsV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminListUserIDByPlatformUserIDsV3InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/users][%d] adminListUserIdByPlatformUserIDsV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminListUserIDByPlatformUserIDsV3InternalServerError) ToJSONString() string {
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

func (o *AdminListUserIDByPlatformUserIDsV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminListUserIDByPlatformUserIDsV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
