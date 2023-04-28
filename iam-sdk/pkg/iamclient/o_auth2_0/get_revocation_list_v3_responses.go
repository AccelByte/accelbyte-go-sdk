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

// GetRevocationListV3Reader is a Reader for the GetRevocationListV3 structure.
type GetRevocationListV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetRevocationListV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetRevocationListV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetRevocationListV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/oauth/revocationlist returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetRevocationListV3OK creates a GetRevocationListV3OK with default headers values
func NewGetRevocationListV3OK() *GetRevocationListV3OK {
	return &GetRevocationListV3OK{}
}

/*GetRevocationListV3OK handles this case with default header values.

  Revocation list returned
*/
type GetRevocationListV3OK struct {
	Payload *iamclientmodels.OauthapiRevocationList
}

func (o *GetRevocationListV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/oauth/revocationlist][%d] getRevocationListV3OK  %+v", 200, o.ToJSONString())
}

func (o *GetRevocationListV3OK) ToJSONString() string {
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

func (o *GetRevocationListV3OK) GetPayload() *iamclientmodels.OauthapiRevocationList {
	return o.Payload
}

func (o *GetRevocationListV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.OauthapiRevocationList)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetRevocationListV3Unauthorized creates a GetRevocationListV3Unauthorized with default headers values
func NewGetRevocationListV3Unauthorized() *GetRevocationListV3Unauthorized {
	return &GetRevocationListV3Unauthorized{}
}

/*GetRevocationListV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetRevocationListV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *GetRevocationListV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/oauth/revocationlist][%d] getRevocationListV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetRevocationListV3Unauthorized) ToJSONString() string {
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

func (o *GetRevocationListV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *GetRevocationListV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
