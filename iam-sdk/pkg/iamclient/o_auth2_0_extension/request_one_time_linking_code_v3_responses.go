// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package o_auth2_0_extension

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

// RequestOneTimeLinkingCodeV3Reader is a Reader for the RequestOneTimeLinkingCodeV3 structure.
type RequestOneTimeLinkingCodeV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RequestOneTimeLinkingCodeV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRequestOneTimeLinkingCodeV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/link/code/request returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRequestOneTimeLinkingCodeV3OK creates a RequestOneTimeLinkingCodeV3OK with default headers values
func NewRequestOneTimeLinkingCodeV3OK() *RequestOneTimeLinkingCodeV3OK {
	return &RequestOneTimeLinkingCodeV3OK{}
}

/*RequestOneTimeLinkingCodeV3OK handles this case with default header values.

  Succeed to one time code.
*/
type RequestOneTimeLinkingCodeV3OK struct {
	Payload *iamclientmodels.OauthmodelOneTimeLinkingCodeResponse
}

func (o *RequestOneTimeLinkingCodeV3OK) Error() string {
	return fmt.Sprintf("[POST /iam/v3/link/code/request][%d] requestOneTimeLinkingCodeV3OK  %+v", 200, o.ToJSONString())
}

func (o *RequestOneTimeLinkingCodeV3OK) ToJSONString() string {
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

func (o *RequestOneTimeLinkingCodeV3OK) GetPayload() *iamclientmodels.OauthmodelOneTimeLinkingCodeResponse {
	return o.Payload
}

func (o *RequestOneTimeLinkingCodeV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.OauthmodelOneTimeLinkingCodeResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
