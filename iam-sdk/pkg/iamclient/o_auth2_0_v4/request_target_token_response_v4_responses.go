// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package o_auth2_0_v4

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

// RequestTargetTokenResponseV4Reader is a Reader for the RequestTargetTokenResponseV4 structure.
type RequestTargetTokenResponseV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RequestTargetTokenResponseV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRequestTargetTokenResponseV4OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 202:
		result := NewRequestTargetTokenResponseV4Accepted()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v4/oauth/token/exchange returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRequestTargetTokenResponseV4OK creates a RequestTargetTokenResponseV4OK with default headers values
func NewRequestTargetTokenResponseV4OK() *RequestTargetTokenResponseV4OK {
	return &RequestTargetTokenResponseV4OK{}
}

/*RequestTargetTokenResponseV4OK handles this case with default header values.

  Succeed to exchange token.
*/
type RequestTargetTokenResponseV4OK struct {
	Payload *iamclientmodels.OauthmodelTokenResponseV3
}

func (o *RequestTargetTokenResponseV4OK) Error() string {
	return fmt.Sprintf("[POST /iam/v4/oauth/token/exchange][%d] requestTargetTokenResponseV4OK  %+v", 200, o.ToJSONString())
}

func (o *RequestTargetTokenResponseV4OK) ToJSONString() string {
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

func (o *RequestTargetTokenResponseV4OK) GetPayload() *iamclientmodels.OauthmodelTokenResponseV3 {
	return o.Payload
}

func (o *RequestTargetTokenResponseV4OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.OauthmodelTokenResponseV3)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRequestTargetTokenResponseV4Accepted creates a RequestTargetTokenResponseV4Accepted with default headers values
func NewRequestTargetTokenResponseV4Accepted() *RequestTargetTokenResponseV4Accepted {
	return &RequestTargetTokenResponseV4Accepted{}
}

/*RequestTargetTokenResponseV4Accepted handles this case with default header values.

  Login queue ticket returned
*/
type RequestTargetTokenResponseV4Accepted struct {
	Payload *iamclientmodels.OauthmodelLoginQueueTicketResponse
}

func (o *RequestTargetTokenResponseV4Accepted) Error() string {
	return fmt.Sprintf("[POST /iam/v4/oauth/token/exchange][%d] requestTargetTokenResponseV4Accepted  %+v", 202, o.ToJSONString())
}

func (o *RequestTargetTokenResponseV4Accepted) ToJSONString() string {
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

func (o *RequestTargetTokenResponseV4Accepted) GetPayload() *iamclientmodels.OauthmodelLoginQueueTicketResponse {
	return o.Payload
}

func (o *RequestTargetTokenResponseV4Accepted) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.OauthmodelLoginQueueTicketResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
