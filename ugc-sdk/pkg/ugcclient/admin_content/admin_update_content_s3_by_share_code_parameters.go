// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_content

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

// NewAdminUpdateContentS3ByShareCodeParams creates a new AdminUpdateContentS3ByShareCodeParams object
// with the default values initialized.
func NewAdminUpdateContentS3ByShareCodeParams() *AdminUpdateContentS3ByShareCodeParams {
	var ()
	return &AdminUpdateContentS3ByShareCodeParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdateContentS3ByShareCodeParamsWithTimeout creates a new AdminUpdateContentS3ByShareCodeParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdateContentS3ByShareCodeParamsWithTimeout(timeout time.Duration) *AdminUpdateContentS3ByShareCodeParams {
	var ()
	return &AdminUpdateContentS3ByShareCodeParams{

		timeout: timeout,
	}
}

// NewAdminUpdateContentS3ByShareCodeParamsWithContext creates a new AdminUpdateContentS3ByShareCodeParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdateContentS3ByShareCodeParamsWithContext(ctx context.Context) *AdminUpdateContentS3ByShareCodeParams {
	var ()
	return &AdminUpdateContentS3ByShareCodeParams{

		Context: ctx,
	}
}

// NewAdminUpdateContentS3ByShareCodeParamsWithHTTPClient creates a new AdminUpdateContentS3ByShareCodeParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdateContentS3ByShareCodeParamsWithHTTPClient(client *http.Client) *AdminUpdateContentS3ByShareCodeParams {
	var ()
	return &AdminUpdateContentS3ByShareCodeParams{
		HTTPClient: client,
	}
}

/*AdminUpdateContentS3ByShareCodeParams contains all the parameters to send to the API endpoint
for the admin update content s3 by share code operation typically these are written to a http.Request
*/
type AdminUpdateContentS3ByShareCodeParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *ugcclientmodels.ModelsAdminUpdateContentRequest
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

// WithTimeout adds the timeout to the admin update content s3 by share code params
func (o *AdminUpdateContentS3ByShareCodeParams) WithTimeout(timeout time.Duration) *AdminUpdateContentS3ByShareCodeParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update content s3 by share code params
func (o *AdminUpdateContentS3ByShareCodeParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update content s3 by share code params
func (o *AdminUpdateContentS3ByShareCodeParams) WithContext(ctx context.Context) *AdminUpdateContentS3ByShareCodeParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update content s3 by share code params
func (o *AdminUpdateContentS3ByShareCodeParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin update content s3 by share code params
func (o *AdminUpdateContentS3ByShareCodeParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin update content s3 by share code params
func (o *AdminUpdateContentS3ByShareCodeParams) WithHTTPClient(client *http.Client) *AdminUpdateContentS3ByShareCodeParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update content s3 by share code params
func (o *AdminUpdateContentS3ByShareCodeParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin update content s3 by share code params
func (o *AdminUpdateContentS3ByShareCodeParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminUpdateContentS3ByShareCodeParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin update content s3 by share code params
func (o *AdminUpdateContentS3ByShareCodeParams) WithBody(body *ugcclientmodels.ModelsAdminUpdateContentRequest) *AdminUpdateContentS3ByShareCodeParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin update content s3 by share code params
func (o *AdminUpdateContentS3ByShareCodeParams) SetBody(body *ugcclientmodels.ModelsAdminUpdateContentRequest) {
	o.Body = body
}

// WithChannelID adds the channelID to the admin update content s3 by share code params
func (o *AdminUpdateContentS3ByShareCodeParams) WithChannelID(channelID string) *AdminUpdateContentS3ByShareCodeParams {
	o.SetChannelID(channelID)
	return o
}

// SetChannelID adds the channelId to the admin update content s3 by share code params
func (o *AdminUpdateContentS3ByShareCodeParams) SetChannelID(channelID string) {
	o.ChannelID = channelID
}

// WithNamespace adds the namespace to the admin update content s3 by share code params
func (o *AdminUpdateContentS3ByShareCodeParams) WithNamespace(namespace string) *AdminUpdateContentS3ByShareCodeParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin update content s3 by share code params
func (o *AdminUpdateContentS3ByShareCodeParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithShareCode adds the shareCode to the admin update content s3 by share code params
func (o *AdminUpdateContentS3ByShareCodeParams) WithShareCode(shareCode string) *AdminUpdateContentS3ByShareCodeParams {
	o.SetShareCode(shareCode)
	return o
}

// SetShareCode adds the shareCode to the admin update content s3 by share code params
func (o *AdminUpdateContentS3ByShareCodeParams) SetShareCode(shareCode string) {
	o.ShareCode = shareCode
}

// WithUserID adds the userID to the admin update content s3 by share code params
func (o *AdminUpdateContentS3ByShareCodeParams) WithUserID(userID string) *AdminUpdateContentS3ByShareCodeParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin update content s3 by share code params
func (o *AdminUpdateContentS3ByShareCodeParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdateContentS3ByShareCodeParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
