// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package topic

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/chat-sdk/pkg/chatclientmodels"
)

// NewPublicUnmuteUserParams creates a new PublicUnmuteUserParams object
// with the default values initialized.
func NewPublicUnmuteUserParams() *PublicUnmuteUserParams {
	var ()
	return &PublicUnmuteUserParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicUnmuteUserParamsWithTimeout creates a new PublicUnmuteUserParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicUnmuteUserParamsWithTimeout(timeout time.Duration) *PublicUnmuteUserParams {
	var ()
	return &PublicUnmuteUserParams{

		timeout: timeout,
	}
}

// NewPublicUnmuteUserParamsWithContext creates a new PublicUnmuteUserParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicUnmuteUserParamsWithContext(ctx context.Context) *PublicUnmuteUserParams {
	var ()
	return &PublicUnmuteUserParams{

		Context: ctx,
	}
}

// NewPublicUnmuteUserParamsWithHTTPClient creates a new PublicUnmuteUserParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicUnmuteUserParamsWithHTTPClient(client *http.Client) *PublicUnmuteUserParams {
	var ()
	return &PublicUnmuteUserParams{
		HTTPClient: client,
	}
}

/*PublicUnmuteUserParams contains all the parameters to send to the API endpoint
for the public unmute user operation typically these are written to a http.Request
*/
type PublicUnmuteUserParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *chatclientmodels.APIUnmuteUserRequest
	/*Namespace
	  namespace

	*/
	Namespace string
	/*Topic
	  topic ID

	*/
	Topic string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public unmute user params
func (o *PublicUnmuteUserParams) WithTimeout(timeout time.Duration) *PublicUnmuteUserParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public unmute user params
func (o *PublicUnmuteUserParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public unmute user params
func (o *PublicUnmuteUserParams) WithContext(ctx context.Context) *PublicUnmuteUserParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public unmute user params
func (o *PublicUnmuteUserParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public unmute user params
func (o *PublicUnmuteUserParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public unmute user params
func (o *PublicUnmuteUserParams) WithHTTPClient(client *http.Client) *PublicUnmuteUserParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public unmute user params
func (o *PublicUnmuteUserParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public unmute user params
func (o *PublicUnmuteUserParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicUnmuteUserParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public unmute user params
func (o *PublicUnmuteUserParams) WithBody(body *chatclientmodels.APIUnmuteUserRequest) *PublicUnmuteUserParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public unmute user params
func (o *PublicUnmuteUserParams) SetBody(body *chatclientmodels.APIUnmuteUserRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the public unmute user params
func (o *PublicUnmuteUserParams) WithNamespace(namespace string) *PublicUnmuteUserParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public unmute user params
func (o *PublicUnmuteUserParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTopic adds the topic to the public unmute user params
func (o *PublicUnmuteUserParams) WithTopic(topic string) *PublicUnmuteUserParams {
	o.SetTopic(topic)
	return o
}

// SetTopic adds the topic to the public unmute user params
func (o *PublicUnmuteUserParams) SetTopic(topic string) {
	o.Topic = topic
}

// WriteToRequest writes these params to a swagger request
func (o *PublicUnmuteUserParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param topic
	if err := r.SetPathParam("topic", o.Topic); err != nil {
		return err
	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
