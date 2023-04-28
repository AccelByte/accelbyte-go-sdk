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

// PublicGetUserLoginHistoriesV3Reader is a Reader for the PublicGetUserLoginHistoriesV3 structure.
type PublicGetUserLoginHistoriesV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetUserLoginHistoriesV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetUserLoginHistoriesV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetUserLoginHistoriesV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicGetUserLoginHistoriesV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetUserLoginHistoriesV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/public/namespaces/{namespace}/users/{userId}/logins/histories returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetUserLoginHistoriesV3OK creates a PublicGetUserLoginHistoriesV3OK with default headers values
func NewPublicGetUserLoginHistoriesV3OK() *PublicGetUserLoginHistoriesV3OK {
	return &PublicGetUserLoginHistoriesV3OK{}
}

/*PublicGetUserLoginHistoriesV3OK handles this case with default header values.

  OK
*/
type PublicGetUserLoginHistoriesV3OK struct {
	Payload *iamclientmodels.ModelLoginHistoriesResponse
}

func (o *PublicGetUserLoginHistoriesV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/users/{userId}/logins/histories][%d] publicGetUserLoginHistoriesV3OK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetUserLoginHistoriesV3OK) ToJSONString() string {
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

func (o *PublicGetUserLoginHistoriesV3OK) GetPayload() *iamclientmodels.ModelLoginHistoriesResponse {
	return o.Payload
}

func (o *PublicGetUserLoginHistoriesV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelLoginHistoriesResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetUserLoginHistoriesV3Unauthorized creates a PublicGetUserLoginHistoriesV3Unauthorized with default headers values
func NewPublicGetUserLoginHistoriesV3Unauthorized() *PublicGetUserLoginHistoriesV3Unauthorized {
	return &PublicGetUserLoginHistoriesV3Unauthorized{}
}

/*PublicGetUserLoginHistoriesV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicGetUserLoginHistoriesV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetUserLoginHistoriesV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/users/{userId}/logins/histories][%d] publicGetUserLoginHistoriesV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetUserLoginHistoriesV3Unauthorized) ToJSONString() string {
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

func (o *PublicGetUserLoginHistoriesV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetUserLoginHistoriesV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetUserLoginHistoriesV3Forbidden creates a PublicGetUserLoginHistoriesV3Forbidden with default headers values
func NewPublicGetUserLoginHistoriesV3Forbidden() *PublicGetUserLoginHistoriesV3Forbidden {
	return &PublicGetUserLoginHistoriesV3Forbidden{}
}

/*PublicGetUserLoginHistoriesV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type PublicGetUserLoginHistoriesV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetUserLoginHistoriesV3Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/users/{userId}/logins/histories][%d] publicGetUserLoginHistoriesV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicGetUserLoginHistoriesV3Forbidden) ToJSONString() string {
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

func (o *PublicGetUserLoginHistoriesV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetUserLoginHistoriesV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetUserLoginHistoriesV3NotFound creates a PublicGetUserLoginHistoriesV3NotFound with default headers values
func NewPublicGetUserLoginHistoriesV3NotFound() *PublicGetUserLoginHistoriesV3NotFound {
	return &PublicGetUserLoginHistoriesV3NotFound{}
}

/*PublicGetUserLoginHistoriesV3NotFound handles this case with default header values.

  Data not found
*/
type PublicGetUserLoginHistoriesV3NotFound struct {
}

func (o *PublicGetUserLoginHistoriesV3NotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/users/{userId}/logins/histories][%d] publicGetUserLoginHistoriesV3NotFound ", 404)
}

func (o *PublicGetUserLoginHistoriesV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
