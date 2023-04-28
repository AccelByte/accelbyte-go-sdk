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

// PublishSeasonReader is a Reader for the PublishSeason structure.
type PublishSeasonReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublishSeasonReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublishSeasonOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublishSeasonBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublishSeasonNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewPublishSeasonConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/publish returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublishSeasonOK creates a PublishSeasonOK with default headers values
func NewPublishSeasonOK() *PublishSeasonOK {
	return &PublishSeasonOK{}
}

/*PublishSeasonOK handles this case with default header values.

  successful operation
*/
type PublishSeasonOK struct {
	Payload *seasonpassclientmodels.SeasonInfo
}

func (o *PublishSeasonOK) Error() string {
	return fmt.Sprintf("[PUT /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/publish][%d] publishSeasonOK  %+v", 200, o.ToJSONString())
}

func (o *PublishSeasonOK) ToJSONString() string {
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

func (o *PublishSeasonOK) GetPayload() *seasonpassclientmodels.SeasonInfo {
	return o.Payload
}

func (o *PublishSeasonOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.SeasonInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublishSeasonBadRequest creates a PublishSeasonBadRequest with default headers values
func NewPublishSeasonBadRequest() *PublishSeasonBadRequest {
	return &PublishSeasonBadRequest{}
}

/*PublishSeasonBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20026</td><td>publisher namespace not allowed</td></tr><tr><td>49121</td><td>Default language [{language}] required in localizations</td></tr></table>
*/
type PublishSeasonBadRequest struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *PublishSeasonBadRequest) Error() string {
	return fmt.Sprintf("[PUT /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/publish][%d] publishSeasonBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublishSeasonBadRequest) ToJSONString() string {
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

func (o *PublishSeasonBadRequest) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublishSeasonBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublishSeasonNotFound creates a PublishSeasonNotFound with default headers values
func NewPublishSeasonNotFound() *PublishSeasonNotFound {
	return &PublishSeasonNotFound{}
}

/*PublishSeasonNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>49143</td><td>Season [{seasonId}] does not exist in namespace [{namespace}]</td></tr><tr><td>30142</td><td>Published store does not exist in namespace [{namespace}]</td></tr><tr><td>49141</td><td>Tier item does not exist in the store of namespace [{namespace}]</td></tr><tr><td>49142</td><td>Pass item does not exist in the store of namespace [{namespace}]</td></tr><tr><td>30341</td><td>Item [{itemId}] does not exist in namespace [{namespace}]</td></tr><tr><td>36141</td><td>Currency [{currencyCode}] does not exist in namespace [{namespace}]</td></tr><tr><td>49144</td><td>Reward [{code}] does not exist</td></tr></table>
*/
type PublishSeasonNotFound struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *PublishSeasonNotFound) Error() string {
	return fmt.Sprintf("[PUT /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/publish][%d] publishSeasonNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublishSeasonNotFound) ToJSONString() string {
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

func (o *PublishSeasonNotFound) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublishSeasonNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublishSeasonConflict creates a PublishSeasonConflict with default headers values
func NewPublishSeasonConflict() *PublishSeasonConflict {
	return &PublishSeasonConflict{}
}

/*PublishSeasonConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>49171</td><td>Invalid season status [{status}]</td></tr><tr><td>49172</td><td>Season is already ended</td></tr><tr><td>49175</td><td>Published season already exists in namespace [{namespace}]</td></tr><tr><td>49176</td><td>Rewards are not provided</td></tr><tr><td>49177</td><td>Passes are not provided</td></tr><tr><td>49178</td><td>Tiers are not provided</td></tr><tr><td>49189</td><td>Duplicate season name [{name}] for publishing in namespace [{namespace}]</td></tr></table>
*/
type PublishSeasonConflict struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *PublishSeasonConflict) Error() string {
	return fmt.Sprintf("[PUT /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/publish][%d] publishSeasonConflict  %+v", 409, o.ToJSONString())
}

func (o *PublishSeasonConflict) ToJSONString() string {
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

func (o *PublishSeasonConflict) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublishSeasonConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
