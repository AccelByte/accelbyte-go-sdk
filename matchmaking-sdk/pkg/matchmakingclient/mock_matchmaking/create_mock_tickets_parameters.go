// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package mock_matchmaking

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclientmodels"
)

// NewCreateMockTicketsParams creates a new CreateMockTicketsParams object
// with the default values initialized.
func NewCreateMockTicketsParams() *CreateMockTicketsParams {
	var ()
	return &CreateMockTicketsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreateMockTicketsParamsWithTimeout creates a new CreateMockTicketsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreateMockTicketsParamsWithTimeout(timeout time.Duration) *CreateMockTicketsParams {
	var ()
	return &CreateMockTicketsParams{

		timeout: timeout,
	}
}

// NewCreateMockTicketsParamsWithContext creates a new CreateMockTicketsParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreateMockTicketsParamsWithContext(ctx context.Context) *CreateMockTicketsParams {
	var ()
	return &CreateMockTicketsParams{

		Context: ctx,
	}
}

// NewCreateMockTicketsParamsWithHTTPClient creates a new CreateMockTicketsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreateMockTicketsParamsWithHTTPClient(client *http.Client) *CreateMockTicketsParams {
	var ()
	return &CreateMockTicketsParams{
		HTTPClient: client,
	}
}

/*CreateMockTicketsParams contains all the parameters to send to the API endpoint
for the create mock tickets operation typically these are written to a http.Request
*/
type CreateMockTicketsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *matchmakingclientmodels.ModelsCreateMockTicket
	/*ChannelName
	  channel name, accept snake_case, lowercase, and numeric

	*/
	ChannelName string
	/*Namespace
	  namespace of the game, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the create mock tickets params
func (o *CreateMockTicketsParams) WithTimeout(timeout time.Duration) *CreateMockTicketsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create mock tickets params
func (o *CreateMockTicketsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create mock tickets params
func (o *CreateMockTicketsParams) WithContext(ctx context.Context) *CreateMockTicketsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create mock tickets params
func (o *CreateMockTicketsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create mock tickets params
func (o *CreateMockTicketsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create mock tickets params
func (o *CreateMockTicketsParams) WithHTTPClient(client *http.Client) *CreateMockTicketsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create mock tickets params
func (o *CreateMockTicketsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create mock tickets params
func (o *CreateMockTicketsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the create mock tickets params
func (o *CreateMockTicketsParams) WithBody(body *matchmakingclientmodels.ModelsCreateMockTicket) *CreateMockTicketsParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create mock tickets params
func (o *CreateMockTicketsParams) SetBody(body *matchmakingclientmodels.ModelsCreateMockTicket) {
	o.Body = body
}

// WithChannelName adds the channelName to the create mock tickets params
func (o *CreateMockTicketsParams) WithChannelName(channelName string) *CreateMockTicketsParams {
	o.SetChannelName(channelName)
	return o
}

// SetChannelName adds the channelName to the create mock tickets params
func (o *CreateMockTicketsParams) SetChannelName(channelName string) {
	o.ChannelName = channelName
}

// WithNamespace adds the namespace to the create mock tickets params
func (o *CreateMockTicketsParams) WithNamespace(namespace string) *CreateMockTicketsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the create mock tickets params
func (o *CreateMockTicketsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *CreateMockTicketsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param channelName
	if err := r.SetPathParam("channelName", o.ChannelName); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
