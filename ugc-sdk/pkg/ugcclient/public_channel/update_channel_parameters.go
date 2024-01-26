// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_channel

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
)

// NewUpdateChannelParams creates a new UpdateChannelParams object
// with the default values initialized.
func NewUpdateChannelParams() *UpdateChannelParams {
	var ()
	return &UpdateChannelParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateChannelParamsWithTimeout creates a new UpdateChannelParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateChannelParamsWithTimeout(timeout time.Duration) *UpdateChannelParams {
	var ()
	return &UpdateChannelParams{

		timeout: timeout,
	}
}

// NewUpdateChannelParamsWithContext creates a new UpdateChannelParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateChannelParamsWithContext(ctx context.Context) *UpdateChannelParams {
	var ()
	return &UpdateChannelParams{

		Context: ctx,
	}
}

// NewUpdateChannelParamsWithHTTPClient creates a new UpdateChannelParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateChannelParamsWithHTTPClient(client *http.Client) *UpdateChannelParams {
	var ()
	return &UpdateChannelParams{
		HTTPClient: client,
	}
}

/*UpdateChannelParams contains all the parameters to send to the API endpoint
for the update channel operation typically these are written to a http.Request
*/
type UpdateChannelParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *ugcclientmodels.ModelsUpdateChannelRequest
	/*ChannelID
	  channelID

	*/
	ChannelID string
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*UserID
	  userID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update channel params
func (o *UpdateChannelParams) WithTimeout(timeout time.Duration) *UpdateChannelParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update channel params
func (o *UpdateChannelParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update channel params
func (o *UpdateChannelParams) WithContext(ctx context.Context) *UpdateChannelParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update channel params
func (o *UpdateChannelParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update channel params
func (o *UpdateChannelParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update channel params
func (o *UpdateChannelParams) WithHTTPClient(client *http.Client) *UpdateChannelParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update channel params
func (o *UpdateChannelParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update channel params
func (o *UpdateChannelParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateChannelParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update channel params
func (o *UpdateChannelParams) WithBody(body *ugcclientmodels.ModelsUpdateChannelRequest) *UpdateChannelParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update channel params
func (o *UpdateChannelParams) SetBody(body *ugcclientmodels.ModelsUpdateChannelRequest) {
	o.Body = body
}

// WithChannelID adds the channelID to the update channel params
func (o *UpdateChannelParams) WithChannelID(channelID string) *UpdateChannelParams {
	o.SetChannelID(channelID)
	return o
}

// SetChannelID adds the channelId to the update channel params
func (o *UpdateChannelParams) SetChannelID(channelID string) {
	o.ChannelID = channelID
}

// WithNamespace adds the namespace to the update channel params
func (o *UpdateChannelParams) WithNamespace(namespace string) *UpdateChannelParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update channel params
func (o *UpdateChannelParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the update channel params
func (o *UpdateChannelParams) WithUserID(userID string) *UpdateChannelParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the update channel params
func (o *UpdateChannelParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateChannelParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param channelId
	if err := r.SetPathParam("channelId", o.ChannelID); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
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
