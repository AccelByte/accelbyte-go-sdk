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

// NewGetMockTicketsByTimestampParams creates a new GetMockTicketsByTimestampParams object
// with the default values initialized.
func NewGetMockTicketsByTimestampParams() *GetMockTicketsByTimestampParams {
	var ()
	return &GetMockTicketsByTimestampParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetMockTicketsByTimestampParamsWithTimeout creates a new GetMockTicketsByTimestampParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetMockTicketsByTimestampParamsWithTimeout(timeout time.Duration) *GetMockTicketsByTimestampParams {
	var ()
	return &GetMockTicketsByTimestampParams{

		timeout: timeout,
	}
}

// NewGetMockTicketsByTimestampParamsWithContext creates a new GetMockTicketsByTimestampParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetMockTicketsByTimestampParamsWithContext(ctx context.Context) *GetMockTicketsByTimestampParams {
	var ()
	return &GetMockTicketsByTimestampParams{

		Context: ctx,
	}
}

// NewGetMockTicketsByTimestampParamsWithHTTPClient creates a new GetMockTicketsByTimestampParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetMockTicketsByTimestampParamsWithHTTPClient(client *http.Client) *GetMockTicketsByTimestampParams {
	var ()
	return &GetMockTicketsByTimestampParams{
		HTTPClient: client,
	}
}

/*GetMockTicketsByTimestampParams contains all the parameters to send to the API endpoint
for the get mock tickets by timestamp operation typically these are written to a http.Request
*/
type GetMockTicketsByTimestampParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *matchmakingclientmodels.ModelsQueryMockBy
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

// WithTimeout adds the timeout to the get mock tickets by timestamp params
func (o *GetMockTicketsByTimestampParams) WithTimeout(timeout time.Duration) *GetMockTicketsByTimestampParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get mock tickets by timestamp params
func (o *GetMockTicketsByTimestampParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get mock tickets by timestamp params
func (o *GetMockTicketsByTimestampParams) WithContext(ctx context.Context) *GetMockTicketsByTimestampParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get mock tickets by timestamp params
func (o *GetMockTicketsByTimestampParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get mock tickets by timestamp params
func (o *GetMockTicketsByTimestampParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get mock tickets by timestamp params
func (o *GetMockTicketsByTimestampParams) WithHTTPClient(client *http.Client) *GetMockTicketsByTimestampParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get mock tickets by timestamp params
func (o *GetMockTicketsByTimestampParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get mock tickets by timestamp params
func (o *GetMockTicketsByTimestampParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the get mock tickets by timestamp params
func (o *GetMockTicketsByTimestampParams) WithBody(body *matchmakingclientmodels.ModelsQueryMockBy) *GetMockTicketsByTimestampParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the get mock tickets by timestamp params
func (o *GetMockTicketsByTimestampParams) SetBody(body *matchmakingclientmodels.ModelsQueryMockBy) {
	o.Body = body
}

// WithChannelName adds the channelName to the get mock tickets by timestamp params
func (o *GetMockTicketsByTimestampParams) WithChannelName(channelName string) *GetMockTicketsByTimestampParams {
	o.SetChannelName(channelName)
	return o
}

// SetChannelName adds the channelName to the get mock tickets by timestamp params
func (o *GetMockTicketsByTimestampParams) SetChannelName(channelName string) {
	o.ChannelName = channelName
}

// WithNamespace adds the namespace to the get mock tickets by timestamp params
func (o *GetMockTicketsByTimestampParams) WithNamespace(namespace string) *GetMockTicketsByTimestampParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get mock tickets by timestamp params
func (o *GetMockTicketsByTimestampParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetMockTicketsByTimestampParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
