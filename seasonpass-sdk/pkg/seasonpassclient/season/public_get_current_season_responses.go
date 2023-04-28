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

// PublicGetCurrentSeasonReader is a Reader for the PublicGetCurrentSeason structure.
type PublicGetCurrentSeasonReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetCurrentSeasonReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetCurrentSeasonOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGetCurrentSeasonBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetCurrentSeasonNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /seasonpass/public/namespaces/{namespace}/seasons/current returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetCurrentSeasonOK creates a PublicGetCurrentSeasonOK with default headers values
func NewPublicGetCurrentSeasonOK() *PublicGetCurrentSeasonOK {
	return &PublicGetCurrentSeasonOK{}
}

/*PublicGetCurrentSeasonOK handles this case with default header values.

  successful operation
*/
type PublicGetCurrentSeasonOK struct {
	Payload *seasonpassclientmodels.LocalizedSeasonInfo
}

func (o *PublicGetCurrentSeasonOK) Error() string {
	return fmt.Sprintf("[GET /seasonpass/public/namespaces/{namespace}/seasons/current][%d] publicGetCurrentSeasonOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetCurrentSeasonOK) ToJSONString() string {
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

func (o *PublicGetCurrentSeasonOK) GetPayload() *seasonpassclientmodels.LocalizedSeasonInfo {
	return o.Payload
}

func (o *PublicGetCurrentSeasonOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.LocalizedSeasonInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetCurrentSeasonBadRequest creates a PublicGetCurrentSeasonBadRequest with default headers values
func NewPublicGetCurrentSeasonBadRequest() *PublicGetCurrentSeasonBadRequest {
	return &PublicGetCurrentSeasonBadRequest{}
}

/*PublicGetCurrentSeasonBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20026</td><td>publisher namespace not allowed</td></tr></table>
*/
type PublicGetCurrentSeasonBadRequest struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *PublicGetCurrentSeasonBadRequest) Error() string {
	return fmt.Sprintf("[GET /seasonpass/public/namespaces/{namespace}/seasons/current][%d] publicGetCurrentSeasonBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGetCurrentSeasonBadRequest) ToJSONString() string {
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

func (o *PublicGetCurrentSeasonBadRequest) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGetCurrentSeasonBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetCurrentSeasonNotFound creates a PublicGetCurrentSeasonNotFound with default headers values
func NewPublicGetCurrentSeasonNotFound() *PublicGetCurrentSeasonNotFound {
	return &PublicGetCurrentSeasonNotFound{}
}

/*PublicGetCurrentSeasonNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>49147</td><td>Published season does not exist</td></tr></table>
*/
type PublicGetCurrentSeasonNotFound struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *PublicGetCurrentSeasonNotFound) Error() string {
	return fmt.Sprintf("[GET /seasonpass/public/namespaces/{namespace}/seasons/current][%d] publicGetCurrentSeasonNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetCurrentSeasonNotFound) ToJSONString() string {
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

func (o *PublicGetCurrentSeasonNotFound) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGetCurrentSeasonNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
