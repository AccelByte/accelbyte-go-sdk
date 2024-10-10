// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package tier

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

// GrantUserTierReader is a Reader for the GrantUserTier structure.
type GrantUserTierReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GrantUserTierReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGrantUserTierOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGrantUserTierBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGrantUserTierNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/tiers returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGrantUserTierOK creates a GrantUserTierOK with default headers values
func NewGrantUserTierOK() *GrantUserTierOK {
	return &GrantUserTierOK{}
}

/*GrantUserTierOK handles this case with default header values.

  successful operation
*/
type GrantUserTierOK struct {
	Payload *seasonpassclientmodels.UserSeasonSummary
}

func (o *GrantUserTierOK) Error() string {
	return fmt.Sprintf("[POST /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/tiers][%d] grantUserTierOK  %+v", 200, o.ToJSONString())
}

func (o *GrantUserTierOK) ToJSONString() string {
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

func (o *GrantUserTierOK) GetPayload() *seasonpassclientmodels.UserSeasonSummary {
	return o.Payload
}

func (o *GrantUserTierOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.UserSeasonSummary)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGrantUserTierBadRequest creates a GrantUserTierBadRequest with default headers values
func NewGrantUserTierBadRequest() *GrantUserTierBadRequest {
	return &GrantUserTierBadRequest{}
}

/*GrantUserTierBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20026</td><td>publisher namespace not allowed</td></tr></table>
*/
type GrantUserTierBadRequest struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *GrantUserTierBadRequest) Error() string {
	return fmt.Sprintf("[POST /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/tiers][%d] grantUserTierBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GrantUserTierBadRequest) ToJSONString() string {
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

func (o *GrantUserTierBadRequest) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GrantUserTierBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGrantUserTierNotFound creates a GrantUserTierNotFound with default headers values
func NewGrantUserTierNotFound() *GrantUserTierNotFound {
	return &GrantUserTierNotFound{}
}

/*GrantUserTierNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>49148</td><td>User season does not exist</td></tr></table>
*/
type GrantUserTierNotFound struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *GrantUserTierNotFound) Error() string {
	return fmt.Sprintf("[POST /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/tiers][%d] grantUserTierNotFound  %+v", 404, o.ToJSONString())
}

func (o *GrantUserTierNotFound) ToJSONString() string {
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

func (o *GrantUserTierNotFound) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GrantUserTierNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
