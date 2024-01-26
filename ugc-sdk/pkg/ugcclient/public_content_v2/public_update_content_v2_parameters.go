// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_content_v2

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

// NewPublicUpdateContentV2Params creates a new PublicUpdateContentV2Params object
// with the default values initialized.
func NewPublicUpdateContentV2Params() *PublicUpdateContentV2Params {
	var ()
	return &PublicUpdateContentV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicUpdateContentV2ParamsWithTimeout creates a new PublicUpdateContentV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicUpdateContentV2ParamsWithTimeout(timeout time.Duration) *PublicUpdateContentV2Params {
	var ()
	return &PublicUpdateContentV2Params{

		timeout: timeout,
	}
}

// NewPublicUpdateContentV2ParamsWithContext creates a new PublicUpdateContentV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicUpdateContentV2ParamsWithContext(ctx context.Context) *PublicUpdateContentV2Params {
	var ()
	return &PublicUpdateContentV2Params{

		Context: ctx,
	}
}

// NewPublicUpdateContentV2ParamsWithHTTPClient creates a new PublicUpdateContentV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicUpdateContentV2ParamsWithHTTPClient(client *http.Client) *PublicUpdateContentV2Params {
	var ()
	return &PublicUpdateContentV2Params{
		HTTPClient: client,
	}
}

/*PublicUpdateContentV2Params contains all the parameters to send to the API endpoint
for the public update content v2 operation typically these are written to a http.Request
*/
type PublicUpdateContentV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *ugcclientmodels.ModelsUpdateContentRequestV2
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

// WithTimeout adds the timeout to the public update content v2 params
func (o *PublicUpdateContentV2Params) WithTimeout(timeout time.Duration) *PublicUpdateContentV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public update content v2 params
func (o *PublicUpdateContentV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public update content v2 params
func (o *PublicUpdateContentV2Params) WithContext(ctx context.Context) *PublicUpdateContentV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public update content v2 params
func (o *PublicUpdateContentV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public update content v2 params
func (o *PublicUpdateContentV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public update content v2 params
func (o *PublicUpdateContentV2Params) WithHTTPClient(client *http.Client) *PublicUpdateContentV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public update content v2 params
func (o *PublicUpdateContentV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public update content v2 params
func (o *PublicUpdateContentV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicUpdateContentV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public update content v2 params
func (o *PublicUpdateContentV2Params) WithBody(body *ugcclientmodels.ModelsUpdateContentRequestV2) *PublicUpdateContentV2Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public update content v2 params
func (o *PublicUpdateContentV2Params) SetBody(body *ugcclientmodels.ModelsUpdateContentRequestV2) {
	o.Body = body
}

// WithChannelID adds the channelID to the public update content v2 params
func (o *PublicUpdateContentV2Params) WithChannelID(channelID string) *PublicUpdateContentV2Params {
	o.SetChannelID(channelID)
	return o
}

// SetChannelID adds the channelId to the public update content v2 params
func (o *PublicUpdateContentV2Params) SetChannelID(channelID string) {
	o.ChannelID = channelID
}

// WithContentID adds the contentID to the public update content v2 params
func (o *PublicUpdateContentV2Params) WithContentID(contentID string) *PublicUpdateContentV2Params {
	o.SetContentID(contentID)
	return o
}

// SetContentID adds the contentId to the public update content v2 params
func (o *PublicUpdateContentV2Params) SetContentID(contentID string) {
	o.ContentID = contentID
}

// WithNamespace adds the namespace to the public update content v2 params
func (o *PublicUpdateContentV2Params) WithNamespace(namespace string) *PublicUpdateContentV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public update content v2 params
func (o *PublicUpdateContentV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public update content v2 params
func (o *PublicUpdateContentV2Params) WithUserID(userID string) *PublicUpdateContentV2Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public update content v2 params
func (o *PublicUpdateContentV2Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicUpdateContentV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
