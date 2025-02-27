// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package season

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclientmodels"
)

// PublicGetUserSeasonReader is a Reader for the PublicGetUserSeason structure.
type PublicGetUserSeasonReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetUserSeasonReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetUserSeasonOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGetUserSeasonBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetUserSeasonNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/{seasonId}/data returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetUserSeasonOK creates a PublicGetUserSeasonOK with default headers values
func NewPublicGetUserSeasonOK() *PublicGetUserSeasonOK {
	return &PublicGetUserSeasonOK{}
}

/*PublicGetUserSeasonOK handles this case with default header values.

  successful operation
*/
type PublicGetUserSeasonOK struct {
	Payload *seasonpassclientmodels.ClaimableUserSeasonInfo
}

func (o *PublicGetUserSeasonOK) Error() string {
	return fmt.Sprintf("[GET /seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/{seasonId}/data][%d] publicGetUserSeasonOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetUserSeasonOK) ToJSONString() string {
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

func (o *PublicGetUserSeasonOK) GetPayload() *seasonpassclientmodels.ClaimableUserSeasonInfo {
	return o.Payload
}

func (o *PublicGetUserSeasonOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.ClaimableUserSeasonInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetUserSeasonBadRequest creates a PublicGetUserSeasonBadRequest with default headers values
func NewPublicGetUserSeasonBadRequest() *PublicGetUserSeasonBadRequest {
	return &PublicGetUserSeasonBadRequest{}
}

/*PublicGetUserSeasonBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20026</td><td>publisher namespace not allowed</td></tr></table>
*/
type PublicGetUserSeasonBadRequest struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *PublicGetUserSeasonBadRequest) Error() string {
	return fmt.Sprintf("[GET /seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/{seasonId}/data][%d] publicGetUserSeasonBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGetUserSeasonBadRequest) ToJSONString() string {
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

func (o *PublicGetUserSeasonBadRequest) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGetUserSeasonBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetUserSeasonNotFound creates a PublicGetUserSeasonNotFound with default headers values
func NewPublicGetUserSeasonNotFound() *PublicGetUserSeasonNotFound {
	return &PublicGetUserSeasonNotFound{}
}

/*PublicGetUserSeasonNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>49148</td><td>User season does not exist</td></tr></table>
*/
type PublicGetUserSeasonNotFound struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *PublicGetUserSeasonNotFound) Error() string {
	return fmt.Sprintf("[GET /seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/{seasonId}/data][%d] publicGetUserSeasonNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetUserSeasonNotFound) ToJSONString() string {
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

func (o *PublicGetUserSeasonNotFound) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGetUserSeasonNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
