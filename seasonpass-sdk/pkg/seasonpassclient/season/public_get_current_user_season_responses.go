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

// PublicGetCurrentUserSeasonReader is a Reader for the PublicGetCurrentUserSeason structure.
type PublicGetCurrentUserSeasonReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetCurrentUserSeasonReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetCurrentUserSeasonOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGetCurrentUserSeasonBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetCurrentUserSeasonNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/current/data returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetCurrentUserSeasonOK creates a PublicGetCurrentUserSeasonOK with default headers values
func NewPublicGetCurrentUserSeasonOK() *PublicGetCurrentUserSeasonOK {
	return &PublicGetCurrentUserSeasonOK{}
}

/*PublicGetCurrentUserSeasonOK handles this case with default header values.

  successful operation
*/
type PublicGetCurrentUserSeasonOK struct {
	Payload *seasonpassclientmodels.ClaimableUserSeasonInfo
}

func (o *PublicGetCurrentUserSeasonOK) Error() string {
	return fmt.Sprintf("[GET /seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/current/data][%d] publicGetCurrentUserSeasonOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetCurrentUserSeasonOK) ToJSONString() string {
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

func (o *PublicGetCurrentUserSeasonOK) GetPayload() *seasonpassclientmodels.ClaimableUserSeasonInfo {
	return o.Payload
}

func (o *PublicGetCurrentUserSeasonOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetCurrentUserSeasonBadRequest creates a PublicGetCurrentUserSeasonBadRequest with default headers values
func NewPublicGetCurrentUserSeasonBadRequest() *PublicGetCurrentUserSeasonBadRequest {
	return &PublicGetCurrentUserSeasonBadRequest{}
}

/*PublicGetCurrentUserSeasonBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20026</td><td>publisher namespace not allowed</td></tr></table>
*/
type PublicGetCurrentUserSeasonBadRequest struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *PublicGetCurrentUserSeasonBadRequest) Error() string {
	return fmt.Sprintf("[GET /seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/current/data][%d] publicGetCurrentUserSeasonBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGetCurrentUserSeasonBadRequest) ToJSONString() string {
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

func (o *PublicGetCurrentUserSeasonBadRequest) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGetCurrentUserSeasonBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetCurrentUserSeasonNotFound creates a PublicGetCurrentUserSeasonNotFound with default headers values
func NewPublicGetCurrentUserSeasonNotFound() *PublicGetCurrentUserSeasonNotFound {
	return &PublicGetCurrentUserSeasonNotFound{}
}

/*PublicGetCurrentUserSeasonNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>49148</td><td>User season does not exist</td></tr><tr><td>49147</td><td>Published season does not exist</td></tr></table>
*/
type PublicGetCurrentUserSeasonNotFound struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *PublicGetCurrentUserSeasonNotFound) Error() string {
	return fmt.Sprintf("[GET /seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/current/data][%d] publicGetCurrentUserSeasonNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetCurrentUserSeasonNotFound) ToJSONString() string {
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

func (o *PublicGetCurrentUserSeasonNotFound) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGetCurrentUserSeasonNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
