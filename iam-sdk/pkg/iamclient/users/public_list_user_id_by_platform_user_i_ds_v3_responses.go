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

// PublicListUserIDByPlatformUserIDsV3Reader is a Reader for the PublicListUserIDByPlatformUserIDsV3 structure.
type PublicListUserIDByPlatformUserIDsV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicListUserIDByPlatformUserIDsV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicListUserIDByPlatformUserIDsV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicListUserIDByPlatformUserIDsV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicListUserIDByPlatformUserIDsV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicListUserIDByPlatformUserIDsV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicListUserIDByPlatformUserIDsV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/public/namespaces/{namespace}/platforms/{platformId}/users returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicListUserIDByPlatformUserIDsV3OK creates a PublicListUserIDByPlatformUserIDsV3OK with default headers values
func NewPublicListUserIDByPlatformUserIDsV3OK() *PublicListUserIDByPlatformUserIDsV3OK {
	return &PublicListUserIDByPlatformUserIDsV3OK{}
}

/*PublicListUserIDByPlatformUserIDsV3OK handles this case with default header values.

  OK
*/
type PublicListUserIDByPlatformUserIDsV3OK struct {
	Payload *iamclientmodels.AccountcommonUserPlatforms
}

func (o *PublicListUserIDByPlatformUserIDsV3OK) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/platforms/{platformId}/users][%d] publicListUserIdByPlatformUserIDsV3OK  %+v", 200, o.ToJSONString())
}

func (o *PublicListUserIDByPlatformUserIDsV3OK) ToJSONString() string {
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

func (o *PublicListUserIDByPlatformUserIDsV3OK) GetPayload() *iamclientmodels.AccountcommonUserPlatforms {
	return o.Payload
}

func (o *PublicListUserIDByPlatformUserIDsV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicListUserIDByPlatformUserIDsV3BadRequest creates a PublicListUserIDByPlatformUserIDsV3BadRequest with default headers values
func NewPublicListUserIDByPlatformUserIDsV3BadRequest() *PublicListUserIDByPlatformUserIDsV3BadRequest {
	return &PublicListUserIDByPlatformUserIDsV3BadRequest{}
}

/*PublicListUserIDByPlatformUserIDsV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicListUserIDByPlatformUserIDsV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicListUserIDByPlatformUserIDsV3BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/platforms/{platformId}/users][%d] publicListUserIdByPlatformUserIDsV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicListUserIDByPlatformUserIDsV3BadRequest) ToJSONString() string {
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

func (o *PublicListUserIDByPlatformUserIDsV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicListUserIDByPlatformUserIDsV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicListUserIDByPlatformUserIDsV3Unauthorized creates a PublicListUserIDByPlatformUserIDsV3Unauthorized with default headers values
func NewPublicListUserIDByPlatformUserIDsV3Unauthorized() *PublicListUserIDByPlatformUserIDsV3Unauthorized {
	return &PublicListUserIDByPlatformUserIDsV3Unauthorized{}
}

/*PublicListUserIDByPlatformUserIDsV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type PublicListUserIDByPlatformUserIDsV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicListUserIDByPlatformUserIDsV3Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/platforms/{platformId}/users][%d] publicListUserIdByPlatformUserIDsV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicListUserIDByPlatformUserIDsV3Unauthorized) ToJSONString() string {
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

func (o *PublicListUserIDByPlatformUserIDsV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicListUserIDByPlatformUserIDsV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicListUserIDByPlatformUserIDsV3Forbidden creates a PublicListUserIDByPlatformUserIDsV3Forbidden with default headers values
func NewPublicListUserIDByPlatformUserIDsV3Forbidden() *PublicListUserIDByPlatformUserIDsV3Forbidden {
	return &PublicListUserIDByPlatformUserIDsV3Forbidden{}
}

/*PublicListUserIDByPlatformUserIDsV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type PublicListUserIDByPlatformUserIDsV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicListUserIDByPlatformUserIDsV3Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/platforms/{platformId}/users][%d] publicListUserIdByPlatformUserIDsV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicListUserIDByPlatformUserIDsV3Forbidden) ToJSONString() string {
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

func (o *PublicListUserIDByPlatformUserIDsV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicListUserIDByPlatformUserIDsV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicListUserIDByPlatformUserIDsV3InternalServerError creates a PublicListUserIDByPlatformUserIDsV3InternalServerError with default headers values
func NewPublicListUserIDByPlatformUserIDsV3InternalServerError() *PublicListUserIDByPlatformUserIDsV3InternalServerError {
	return &PublicListUserIDByPlatformUserIDsV3InternalServerError{}
}

/*PublicListUserIDByPlatformUserIDsV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicListUserIDByPlatformUserIDsV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicListUserIDByPlatformUserIDsV3InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/platforms/{platformId}/users][%d] publicListUserIdByPlatformUserIDsV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicListUserIDByPlatformUserIDsV3InternalServerError) ToJSONString() string {
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

func (o *PublicListUserIDByPlatformUserIDsV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicListUserIDByPlatformUserIDsV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
