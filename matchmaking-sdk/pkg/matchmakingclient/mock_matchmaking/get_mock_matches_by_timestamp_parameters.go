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

// NewGetMockMatchesByTimestampParams creates a new GetMockMatchesByTimestampParams object
// with the default values initialized.
func NewGetMockMatchesByTimestampParams() *GetMockMatchesByTimestampParams {
	var ()
	return &GetMockMatchesByTimestampParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetMockMatchesByTimestampParamsWithTimeout creates a new GetMockMatchesByTimestampParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetMockMatchesByTimestampParamsWithTimeout(timeout time.Duration) *GetMockMatchesByTimestampParams {
	var ()
	return &GetMockMatchesByTimestampParams{

		timeout: timeout,
	}
}

// NewGetMockMatchesByTimestampParamsWithContext creates a new GetMockMatchesByTimestampParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetMockMatchesByTimestampParamsWithContext(ctx context.Context) *GetMockMatchesByTimestampParams {
	var ()
	return &GetMockMatchesByTimestampParams{

		Context: ctx,
	}
}

// NewGetMockMatchesByTimestampParamsWithHTTPClient creates a new GetMockMatchesByTimestampParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetMockMatchesByTimestampParamsWithHTTPClient(client *http.Client) *GetMockMatchesByTimestampParams {
	var ()
	return &GetMockMatchesByTimestampParams{
		HTTPClient: client,
	}
}

/*GetMockMatchesByTimestampParams contains all the parameters to send to the API endpoint
for the get mock matches by timestamp operation typically these are written to a http.Request
*/
type GetMockMatchesByTimestampParams struct {

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

// WithTimeout adds the timeout to the get mock matches by timestamp params
func (o *GetMockMatchesByTimestampParams) WithTimeout(timeout time.Duration) *GetMockMatchesByTimestampParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get mock matches by timestamp params
func (o *GetMockMatchesByTimestampParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get mock matches by timestamp params
func (o *GetMockMatchesByTimestampParams) WithContext(ctx context.Context) *GetMockMatchesByTimestampParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get mock matches by timestamp params
func (o *GetMockMatchesByTimestampParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get mock matches by timestamp params
func (o *GetMockMatchesByTimestampParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get mock matches by timestamp params
func (o *GetMockMatchesByTimestampParams) WithHTTPClient(client *http.Client) *GetMockMatchesByTimestampParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get mock matches by timestamp params
func (o *GetMockMatchesByTimestampParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get mock matches by timestamp params
func (o *GetMockMatchesByTimestampParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the get mock matches by timestamp params
func (o *GetMockMatchesByTimestampParams) WithBody(body *matchmakingclientmodels.ModelsQueryMockBy) *GetMockMatchesByTimestampParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the get mock matches by timestamp params
func (o *GetMockMatchesByTimestampParams) SetBody(body *matchmakingclientmodels.ModelsQueryMockBy) {
	o.Body = body
}

// WithChannelName adds the channelName to the get mock matches by timestamp params
func (o *GetMockMatchesByTimestampParams) WithChannelName(channelName string) *GetMockMatchesByTimestampParams {
	o.SetChannelName(channelName)
	return o
}

// SetChannelName adds the channelName to the get mock matches by timestamp params
func (o *GetMockMatchesByTimestampParams) SetChannelName(channelName string) {
	o.ChannelName = channelName
}

// WithNamespace adds the namespace to the get mock matches by timestamp params
func (o *GetMockMatchesByTimestampParams) WithNamespace(namespace string) *GetMockMatchesByTimestampParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get mock matches by timestamp params
func (o *GetMockMatchesByTimestampParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetMockMatchesByTimestampParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
