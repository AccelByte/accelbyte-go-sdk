// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package matchmaking

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// NewGetSingleMatchmakingChannelParams creates a new GetSingleMatchmakingChannelParams object
// with the default values initialized.
func NewGetSingleMatchmakingChannelParams() *GetSingleMatchmakingChannelParams {
	var ()
	return &GetSingleMatchmakingChannelParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetSingleMatchmakingChannelParamsWithTimeout creates a new GetSingleMatchmakingChannelParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetSingleMatchmakingChannelParamsWithTimeout(timeout time.Duration) *GetSingleMatchmakingChannelParams {
	var ()
	return &GetSingleMatchmakingChannelParams{

		timeout: timeout,
	}
}

// NewGetSingleMatchmakingChannelParamsWithContext creates a new GetSingleMatchmakingChannelParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetSingleMatchmakingChannelParamsWithContext(ctx context.Context) *GetSingleMatchmakingChannelParams {
	var ()
	return &GetSingleMatchmakingChannelParams{

		Context: ctx,
	}
}

// NewGetSingleMatchmakingChannelParamsWithHTTPClient creates a new GetSingleMatchmakingChannelParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetSingleMatchmakingChannelParamsWithHTTPClient(client *http.Client) *GetSingleMatchmakingChannelParams {
	var ()
	return &GetSingleMatchmakingChannelParams{
		HTTPClient: client,
	}
}

/*GetSingleMatchmakingChannelParams contains all the parameters to send to the API endpoint
for the get single matchmaking channel operation typically these are written to a http.Request
*/
type GetSingleMatchmakingChannelParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
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

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get single matchmaking channel params
func (o *GetSingleMatchmakingChannelParams) WithTimeout(timeout time.Duration) *GetSingleMatchmakingChannelParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get single matchmaking channel params
func (o *GetSingleMatchmakingChannelParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get single matchmaking channel params
func (o *GetSingleMatchmakingChannelParams) WithContext(ctx context.Context) *GetSingleMatchmakingChannelParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get single matchmaking channel params
func (o *GetSingleMatchmakingChannelParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get single matchmaking channel params
func (o *GetSingleMatchmakingChannelParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get single matchmaking channel params
func (o *GetSingleMatchmakingChannelParams) WithHTTPClient(client *http.Client) *GetSingleMatchmakingChannelParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get single matchmaking channel params
func (o *GetSingleMatchmakingChannelParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get single matchmaking channel params
func (o *GetSingleMatchmakingChannelParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetSingleMatchmakingChannelParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithChannelName adds the channelName to the get single matchmaking channel params
func (o *GetSingleMatchmakingChannelParams) WithChannelName(channelName string) *GetSingleMatchmakingChannelParams {
	o.SetChannelName(channelName)
	return o
}

// SetChannelName adds the channelName to the get single matchmaking channel params
func (o *GetSingleMatchmakingChannelParams) SetChannelName(channelName string) {
	o.ChannelName = channelName
}

// WithNamespace adds the namespace to the get single matchmaking channel params
func (o *GetSingleMatchmakingChannelParams) WithNamespace(namespace string) *GetSingleMatchmakingChannelParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get single matchmaking channel params
func (o *GetSingleMatchmakingChannelParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetSingleMatchmakingChannelParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
