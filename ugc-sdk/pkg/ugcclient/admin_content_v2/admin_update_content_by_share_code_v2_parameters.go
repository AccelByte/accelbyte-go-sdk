// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_content_v2

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

// NewAdminUpdateContentByShareCodeV2Params creates a new AdminUpdateContentByShareCodeV2Params object
// with the default values initialized.
func NewAdminUpdateContentByShareCodeV2Params() *AdminUpdateContentByShareCodeV2Params {
	var ()
	return &AdminUpdateContentByShareCodeV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdateContentByShareCodeV2ParamsWithTimeout creates a new AdminUpdateContentByShareCodeV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdateContentByShareCodeV2ParamsWithTimeout(timeout time.Duration) *AdminUpdateContentByShareCodeV2Params {
	var ()
	return &AdminUpdateContentByShareCodeV2Params{

		timeout: timeout,
	}
}

// NewAdminUpdateContentByShareCodeV2ParamsWithContext creates a new AdminUpdateContentByShareCodeV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdateContentByShareCodeV2ParamsWithContext(ctx context.Context) *AdminUpdateContentByShareCodeV2Params {
	var ()
	return &AdminUpdateContentByShareCodeV2Params{

		Context: ctx,
	}
}

// NewAdminUpdateContentByShareCodeV2ParamsWithHTTPClient creates a new AdminUpdateContentByShareCodeV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdateContentByShareCodeV2ParamsWithHTTPClient(client *http.Client) *AdminUpdateContentByShareCodeV2Params {
	var ()
	return &AdminUpdateContentByShareCodeV2Params{
		HTTPClient: client,
	}
}

/*AdminUpdateContentByShareCodeV2Params contains all the parameters to send to the API endpoint
for the admin update content by share code v2 operation typically these are written to a http.Request
*/
type AdminUpdateContentByShareCodeV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *ugcclientmodels.ModelsAdminUpdateContentRequestV2
	/*ChannelID
	  channel ID

	*/
	ChannelID string
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*ShareCode
	  share code

	*/
	ShareCode string
	/*UserID
	  user ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin update content by share code v2 params
func (o *AdminUpdateContentByShareCodeV2Params) WithTimeout(timeout time.Duration) *AdminUpdateContentByShareCodeV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update content by share code v2 params
func (o *AdminUpdateContentByShareCodeV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update content by share code v2 params
func (o *AdminUpdateContentByShareCodeV2Params) WithContext(ctx context.Context) *AdminUpdateContentByShareCodeV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update content by share code v2 params
func (o *AdminUpdateContentByShareCodeV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin update content by share code v2 params
func (o *AdminUpdateContentByShareCodeV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin update content by share code v2 params
func (o *AdminUpdateContentByShareCodeV2Params) WithHTTPClient(client *http.Client) *AdminUpdateContentByShareCodeV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update content by share code v2 params
func (o *AdminUpdateContentByShareCodeV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin update content by share code v2 params
func (o *AdminUpdateContentByShareCodeV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminUpdateContentByShareCodeV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin update content by share code v2 params
func (o *AdminUpdateContentByShareCodeV2Params) WithBody(body *ugcclientmodels.ModelsAdminUpdateContentRequestV2) *AdminUpdateContentByShareCodeV2Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin update content by share code v2 params
func (o *AdminUpdateContentByShareCodeV2Params) SetBody(body *ugcclientmodels.ModelsAdminUpdateContentRequestV2) {
	o.Body = body
}

// WithChannelID adds the channelID to the admin update content by share code v2 params
func (o *AdminUpdateContentByShareCodeV2Params) WithChannelID(channelID string) *AdminUpdateContentByShareCodeV2Params {
	o.SetChannelID(channelID)
	return o
}

// SetChannelID adds the channelId to the admin update content by share code v2 params
func (o *AdminUpdateContentByShareCodeV2Params) SetChannelID(channelID string) {
	o.ChannelID = channelID
}

// WithNamespace adds the namespace to the admin update content by share code v2 params
func (o *AdminUpdateContentByShareCodeV2Params) WithNamespace(namespace string) *AdminUpdateContentByShareCodeV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin update content by share code v2 params
func (o *AdminUpdateContentByShareCodeV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithShareCode adds the shareCode to the admin update content by share code v2 params
func (o *AdminUpdateContentByShareCodeV2Params) WithShareCode(shareCode string) *AdminUpdateContentByShareCodeV2Params {
	o.SetShareCode(shareCode)
	return o
}

// SetShareCode adds the shareCode to the admin update content by share code v2 params
func (o *AdminUpdateContentByShareCodeV2Params) SetShareCode(shareCode string) {
	o.ShareCode = shareCode
}

// WithUserID adds the userID to the admin update content by share code v2 params
func (o *AdminUpdateContentByShareCodeV2Params) WithUserID(userID string) *AdminUpdateContentByShareCodeV2Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin update content by share code v2 params
func (o *AdminUpdateContentByShareCodeV2Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdateContentByShareCodeV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param shareCode
	if err := r.SetPathParam("shareCode", o.ShareCode); err != nil {
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
