// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users_v4

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

// PublicListUserIDByPlatformUserIDsV4Reader is a Reader for the PublicListUserIDByPlatformUserIDsV4 structure.
type PublicListUserIDByPlatformUserIDsV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicListUserIDByPlatformUserIDsV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicListUserIDByPlatformUserIDsV4OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicListUserIDByPlatformUserIDsV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicListUserIDByPlatformUserIDsV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicListUserIDByPlatformUserIDsV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicListUserIDByPlatformUserIDsV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v4/public/namespaces/{namespace}/platforms/{platformId}/users returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicListUserIDByPlatformUserIDsV4OK creates a PublicListUserIDByPlatformUserIDsV4OK with default headers values
func NewPublicListUserIDByPlatformUserIDsV4OK() *PublicListUserIDByPlatformUserIDsV4OK {
	return &PublicListUserIDByPlatformUserIDsV4OK{}
}

/*PublicListUserIDByPlatformUserIDsV4OK handles this case with default header values.

  OK
*/
type PublicListUserIDByPlatformUserIDsV4OK struct {
	Payload *iamclientmodels.AccountcommonUserPlatforms
}

func (o *PublicListUserIDByPlatformUserIDsV4OK) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/platforms/{platformId}/users][%d] publicListUserIdByPlatformUserIDsV4OK  %+v", 200, o.ToJSONString())
}

func (o *PublicListUserIDByPlatformUserIDsV4OK) ToJSONString() string {
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

func (o *PublicListUserIDByPlatformUserIDsV4OK) GetPayload() *iamclientmodels.AccountcommonUserPlatforms {
	return o.Payload
}

func (o *PublicListUserIDByPlatformUserIDsV4OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicListUserIDByPlatformUserIDsV4BadRequest creates a PublicListUserIDByPlatformUserIDsV4BadRequest with default headers values
func NewPublicListUserIDByPlatformUserIDsV4BadRequest() *PublicListUserIDByPlatformUserIDsV4BadRequest {
	return &PublicListUserIDByPlatformUserIDsV4BadRequest{}
}

/*PublicListUserIDByPlatformUserIDsV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>10229</td><td>request body exceed max limitation</td></tr></table>
*/
type PublicListUserIDByPlatformUserIDsV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicListUserIDByPlatformUserIDsV4BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/platforms/{platformId}/users][%d] publicListUserIdByPlatformUserIDsV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicListUserIDByPlatformUserIDsV4BadRequest) ToJSONString() string {
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

func (o *PublicListUserIDByPlatformUserIDsV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicListUserIDByPlatformUserIDsV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicListUserIDByPlatformUserIDsV4Unauthorized creates a PublicListUserIDByPlatformUserIDsV4Unauthorized with default headers values
func NewPublicListUserIDByPlatformUserIDsV4Unauthorized() *PublicListUserIDByPlatformUserIDsV4Unauthorized {
	return &PublicListUserIDByPlatformUserIDsV4Unauthorized{}
}

/*PublicListUserIDByPlatformUserIDsV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type PublicListUserIDByPlatformUserIDsV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicListUserIDByPlatformUserIDsV4Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/platforms/{platformId}/users][%d] publicListUserIdByPlatformUserIDsV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicListUserIDByPlatformUserIDsV4Unauthorized) ToJSONString() string {
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

func (o *PublicListUserIDByPlatformUserIDsV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicListUserIDByPlatformUserIDsV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicListUserIDByPlatformUserIDsV4Forbidden creates a PublicListUserIDByPlatformUserIDsV4Forbidden with default headers values
func NewPublicListUserIDByPlatformUserIDsV4Forbidden() *PublicListUserIDByPlatformUserIDsV4Forbidden {
	return &PublicListUserIDByPlatformUserIDsV4Forbidden{}
}

/*PublicListUserIDByPlatformUserIDsV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type PublicListUserIDByPlatformUserIDsV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicListUserIDByPlatformUserIDsV4Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/platforms/{platformId}/users][%d] publicListUserIdByPlatformUserIDsV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicListUserIDByPlatformUserIDsV4Forbidden) ToJSONString() string {
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

func (o *PublicListUserIDByPlatformUserIDsV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicListUserIDByPlatformUserIDsV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicListUserIDByPlatformUserIDsV4InternalServerError creates a PublicListUserIDByPlatformUserIDsV4InternalServerError with default headers values
func NewPublicListUserIDByPlatformUserIDsV4InternalServerError() *PublicListUserIDByPlatformUserIDsV4InternalServerError {
	return &PublicListUserIDByPlatformUserIDsV4InternalServerError{}
}

/*PublicListUserIDByPlatformUserIDsV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicListUserIDByPlatformUserIDsV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicListUserIDByPlatformUserIDsV4InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v4/public/namespaces/{namespace}/platforms/{platformId}/users][%d] publicListUserIdByPlatformUserIDsV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicListUserIDByPlatformUserIDsV4InternalServerError) ToJSONString() string {
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

func (o *PublicListUserIDByPlatformUserIDsV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicListUserIDByPlatformUserIDsV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
