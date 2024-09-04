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

// NewAdminCopyContentParams creates a new AdminCopyContentParams object
// with the default values initialized.
func NewAdminCopyContentParams() *AdminCopyContentParams {
	var ()
	return &AdminCopyContentParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminCopyContentParamsWithTimeout creates a new AdminCopyContentParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminCopyContentParamsWithTimeout(timeout time.Duration) *AdminCopyContentParams {
	var ()
	return &AdminCopyContentParams{

		timeout: timeout,
	}
}

// NewAdminCopyContentParamsWithContext creates a new AdminCopyContentParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminCopyContentParamsWithContext(ctx context.Context) *AdminCopyContentParams {
	var ()
	return &AdminCopyContentParams{

		Context: ctx,
	}
}

// NewAdminCopyContentParamsWithHTTPClient creates a new AdminCopyContentParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminCopyContentParamsWithHTTPClient(client *http.Client) *AdminCopyContentParams {
	var ()
	return &AdminCopyContentParams{
		HTTPClient: client,
	}
}

/*AdminCopyContentParams contains all the parameters to send to the API endpoint
for the admin copy content operation typically these are written to a http.Request
*/
type AdminCopyContentParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *ugcclientmodels.ModelsCopyContentRequest
	/*ChannelID
	  source channel id

	*/
	ChannelID string
	/*ContentID
	  source content id

	*/
	ContentID string
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin copy content params
func (o *AdminCopyContentParams) WithTimeout(timeout time.Duration) *AdminCopyContentParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin copy content params
func (o *AdminCopyContentParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin copy content params
func (o *AdminCopyContentParams) WithContext(ctx context.Context) *AdminCopyContentParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin copy content params
func (o *AdminCopyContentParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin copy content params
func (o *AdminCopyContentParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin copy content params
func (o *AdminCopyContentParams) WithHTTPClient(client *http.Client) *AdminCopyContentParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin copy content params
func (o *AdminCopyContentParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin copy content params
func (o *AdminCopyContentParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminCopyContentParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin copy content params
func (o *AdminCopyContentParams) WithBody(body *ugcclientmodels.ModelsCopyContentRequest) *AdminCopyContentParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin copy content params
func (o *AdminCopyContentParams) SetBody(body *ugcclientmodels.ModelsCopyContentRequest) {
	o.Body = body
}

// WithChannelID adds the channelID to the admin copy content params
func (o *AdminCopyContentParams) WithChannelID(channelID string) *AdminCopyContentParams {
	o.SetChannelID(channelID)
	return o
}

// SetChannelID adds the channelId to the admin copy content params
func (o *AdminCopyContentParams) SetChannelID(channelID string) {
	o.ChannelID = channelID
}

// WithContentID adds the contentID to the admin copy content params
func (o *AdminCopyContentParams) WithContentID(contentID string) *AdminCopyContentParams {
	o.SetContentID(contentID)
	return o
}

// SetContentID adds the contentId to the admin copy content params
func (o *AdminCopyContentParams) SetContentID(contentID string) {
	o.ContentID = contentID
}

// WithNamespace adds the namespace to the admin copy content params
func (o *AdminCopyContentParams) WithNamespace(namespace string) *AdminCopyContentParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin copy content params
func (o *AdminCopyContentParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminCopyContentParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param contentId
	if err := r.SetPathParam("contentId", o.ContentID); err != nil {
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
