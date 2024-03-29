// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_content_legacy

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

// NewUpdateContentS3Params creates a new UpdateContentS3Params object
// with the default values initialized.
func NewUpdateContentS3Params() *UpdateContentS3Params {
	var ()
	return &UpdateContentS3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateContentS3ParamsWithTimeout creates a new UpdateContentS3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateContentS3ParamsWithTimeout(timeout time.Duration) *UpdateContentS3Params {
	var ()
	return &UpdateContentS3Params{

		timeout: timeout,
	}
}

// NewUpdateContentS3ParamsWithContext creates a new UpdateContentS3Params object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateContentS3ParamsWithContext(ctx context.Context) *UpdateContentS3Params {
	var ()
	return &UpdateContentS3Params{

		Context: ctx,
	}
}

// NewUpdateContentS3ParamsWithHTTPClient creates a new UpdateContentS3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateContentS3ParamsWithHTTPClient(client *http.Client) *UpdateContentS3Params {
	var ()
	return &UpdateContentS3Params{
		HTTPClient: client,
	}
}

/*UpdateContentS3Params contains all the parameters to send to the API endpoint
for the update content s3 operation typically these are written to a http.Request
*/
type UpdateContentS3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *ugcclientmodels.ModelsUpdateContentRequest
	/*ChannelID
	  channel ID

	*/
	ChannelID string
	/*ContentID
	  content ID

	*/
	ContentID string
	/*Namespace
	  namespace of the game

	*/
	Namespace string
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

// WithTimeout adds the timeout to the update content s3 params
func (o *UpdateContentS3Params) WithTimeout(timeout time.Duration) *UpdateContentS3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update content s3 params
func (o *UpdateContentS3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update content s3 params
func (o *UpdateContentS3Params) WithContext(ctx context.Context) *UpdateContentS3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update content s3 params
func (o *UpdateContentS3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update content s3 params
func (o *UpdateContentS3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update content s3 params
func (o *UpdateContentS3Params) WithHTTPClient(client *http.Client) *UpdateContentS3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update content s3 params
func (o *UpdateContentS3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update content s3 params
func (o *UpdateContentS3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateContentS3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update content s3 params
func (o *UpdateContentS3Params) WithBody(body *ugcclientmodels.ModelsUpdateContentRequest) *UpdateContentS3Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update content s3 params
func (o *UpdateContentS3Params) SetBody(body *ugcclientmodels.ModelsUpdateContentRequest) {
	o.Body = body
}

// WithChannelID adds the channelID to the update content s3 params
func (o *UpdateContentS3Params) WithChannelID(channelID string) *UpdateContentS3Params {
	o.SetChannelID(channelID)
	return o
}

// SetChannelID adds the channelId to the update content s3 params
func (o *UpdateContentS3Params) SetChannelID(channelID string) {
	o.ChannelID = channelID
}

// WithContentID adds the contentID to the update content s3 params
func (o *UpdateContentS3Params) WithContentID(contentID string) *UpdateContentS3Params {
	o.SetContentID(contentID)
	return o
}

// SetContentID adds the contentId to the update content s3 params
func (o *UpdateContentS3Params) SetContentID(contentID string) {
	o.ContentID = contentID
}

// WithNamespace adds the namespace to the update content s3 params
func (o *UpdateContentS3Params) WithNamespace(namespace string) *UpdateContentS3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update content s3 params
func (o *UpdateContentS3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the update content s3 params
func (o *UpdateContentS3Params) WithUserID(userID string) *UpdateContentS3Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the update content s3 params
func (o *UpdateContentS3Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateContentS3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
