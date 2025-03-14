// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package o_auth2_0

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

// RevokeUserV3Reader is a Reader for the RevokeUserV3 structure.
type RevokeUserV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RevokeUserV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewRevokeUserV3NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewRevokeUserV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewRevokeUserV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewRevokeUserV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/oauth/admin/namespaces/{namespace}/users/{userId}/revoke returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRevokeUserV3NoContent creates a RevokeUserV3NoContent with default headers values
func NewRevokeUserV3NoContent() *RevokeUserV3NoContent {
	return &RevokeUserV3NoContent{}
}

/*RevokeUserV3NoContent handles this case with default header values.

  user revoked
*/
type RevokeUserV3NoContent struct {
}

func (o *RevokeUserV3NoContent) Error() string {
	return fmt.Sprintf("[POST /iam/v3/oauth/admin/namespaces/{namespace}/users/{userId}/revoke][%d] revokeUserV3NoContent ", 204)
}

func (o *RevokeUserV3NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewRevokeUserV3BadRequest creates a RevokeUserV3BadRequest with default headers values
func NewRevokeUserV3BadRequest() *RevokeUserV3BadRequest {
	return &RevokeUserV3BadRequest{}
}

/*RevokeUserV3BadRequest handles this case with default header values.

  invalid input
*/
type RevokeUserV3BadRequest struct {
	Payload *iamclientmodels.OauthmodelErrorResponse
}

func (o *RevokeUserV3BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/oauth/admin/namespaces/{namespace}/users/{userId}/revoke][%d] revokeUserV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *RevokeUserV3BadRequest) ToJSONString() string {
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

func (o *RevokeUserV3BadRequest) GetPayload() *iamclientmodels.OauthmodelErrorResponse {
	return o.Payload
}

func (o *RevokeUserV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.OauthmodelErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRevokeUserV3Unauthorized creates a RevokeUserV3Unauthorized with default headers values
func NewRevokeUserV3Unauthorized() *RevokeUserV3Unauthorized {
	return &RevokeUserV3Unauthorized{}
}

/*RevokeUserV3Unauthorized handles this case with default header values.

  Token is not exist, expired, or invalid
*/
type RevokeUserV3Unauthorized struct {
	Payload *iamclientmodels.OauthmodelErrorResponse
}

func (o *RevokeUserV3Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v3/oauth/admin/namespaces/{namespace}/users/{userId}/revoke][%d] revokeUserV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *RevokeUserV3Unauthorized) ToJSONString() string {
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

func (o *RevokeUserV3Unauthorized) GetPayload() *iamclientmodels.OauthmodelErrorResponse {
	return o.Payload
}

func (o *RevokeUserV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.OauthmodelErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRevokeUserV3Forbidden creates a RevokeUserV3Forbidden with default headers values
func NewRevokeUserV3Forbidden() *RevokeUserV3Forbidden {
	return &RevokeUserV3Forbidden{}
}

/*RevokeUserV3Forbidden handles this case with default header values.

  insufficient permission
*/
type RevokeUserV3Forbidden struct {
	Payload *iamclientmodels.OauthmodelErrorResponse
}

func (o *RevokeUserV3Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v3/oauth/admin/namespaces/{namespace}/users/{userId}/revoke][%d] revokeUserV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *RevokeUserV3Forbidden) ToJSONString() string {
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

func (o *RevokeUserV3Forbidden) GetPayload() *iamclientmodels.OauthmodelErrorResponse {
	return o.Payload
}

func (o *RevokeUserV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.OauthmodelErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
